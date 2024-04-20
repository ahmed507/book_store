import 'dart:async';

import 'package:book_shop/domain/core/failures.dart';
import 'package:book_shop/domain/core/i_fire_store_service.dart';
import 'package:book_shop/domain/shopping/cart_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

@lazySingleton
class CartBloc extends Bloc<CartEvent, CartState> {
  final IFireStoreService _fireStoreService;

  CartBloc(
    this._fireStoreService,
  ) : super(CartState.initial()) {
    on<CartEvent>((event, emit) async {
      Future<void> convertCartModelToViewModel(CartModel cart) async {
        if (cart.items.isEmpty) {
          emit(state.copyWith(
            cart: CartViewModel(
              id: cart.id,
              items: const [],
            ),
            isLoading: false,
          ));
        } else {
          List<String> bookIds = cart.items.map((e) => e.bookId).toList();
          List<CartItemViewModel> items = [];
          for (String bookId in bookIds) {
            print(bookId);
            await _fireStoreService.getBook(bookId).then((value) async {
              await value.fold((l) async {
                emit(state.copyWith(
                  failure: some(l),
                  isLoading: false,
                ));
              }, (book) async {
                items.add(CartItemViewModel(
                  book: book,
                  quantity: cart.items
                      .firstWhere((element) => element.bookId == book.id)
                      .quantity,
                  totalPrice: book.price!.toDouble() *
                      cart.items
                          .firstWhere((element) => element.bookId == book.id)
                          .quantity,
                ));
                emit(state.copyWith(
                  cart: CartViewModel(
                    id: cart.id,
                    items: items,
                  ),
                  isLoading: false,
                  totalPrice: items.fold(
                      0,
                      (previousValue, element) =>
                          previousValue +
                          (element.book.price! * element.quantity)),
                  totalItems: items.fold(
                    0,
                    (previousValue, element) =>
                        previousValue + element.quantity,
                  ),
                ));
              });
            });
          }
        }
      }

      await event.when(
          createCart: () async {
            emit(state.copyWith(isLoading: true));
            await _fireStoreService.createCart().then((cart) async {
              await cart.fold((l) {
                emit(state.copyWith(
                  failure: some(l),
                  isLoading: false,
                ));
              }, (cart) async {
                await convertCartModelToViewModel(cart);
              });
            });
          },
          getCart: (cartId) async {
            emit(state.copyWith(isLoading: true));
            await _fireStoreService.getCart(cartId).then((cart) async {
              await cart.fold((l) {
                emit(state.copyWith(
                  failure: some(l),
                  isLoading: false,
                ));
              }, (cart) async {
                await convertCartModelToViewModel(cart);
              });
            });
          },
          addBookToCart: (bookId) async {
            CartViewModel? cart = state.cart;
            await _fireStoreService.getBook(bookId).then((value) async {
              await value.fold((l) {
                emit(state.copyWith(
                  failure: some(l),
                  isLoading: false,
                ));
              }, (book) async {
                if (cart != null) {
                  if (cart!.items
                      .any((element) => element.book.id == book.id)) {
                    cart!.items.firstWhere((element) {
                      if (element.book.id == bookId) {
                        cart!.items[cart!.items.indexOf(element)] =
                            element.copyWith(
                          quantity: element.quantity + 1,
                          totalPrice: element.book.price!.toDouble() *
                              (element.quantity + 1),
                        );
                      }
                      return element.book.id == book.id;
                    });
                  } else {
                    cart = cart!.copyWith(
                      items: [
                        ...cart!.items,
                        CartItemViewModel(
                          book: book,
                          quantity: 1,
                          totalPrice: book.price!.toDouble(),
                        ),
                      ],
                    );
                  }

                  await _fireStoreService
                      .updateCart(cart!.toModel())
                      .then((value) async {
                    await value.fold((l) {
                      emit(state.copyWith(
                        failure: some(l),
                        isLoading: false,
                      ));
                    }, (r) async {
                      emit(state.copyWith(
                        cart: cart,
                        isLoading: false,
                        totalPrice: cart!.items.fold(
                            0,
                            (previousValue, element) =>
                                previousValue +
                                (element.book.price! * element.quantity)),
                        totalItems: cart!.items.fold(
                          0,
                          (previousValue, element) =>
                              previousValue + element.quantity,
                        ),
                      ));
                    });
                  });
                }
              });
            });
          },
          removeBookFromCart: (bookId) async {
            CartViewModel? cart = state.cart;
            if (cart != null) {
              cart.items.removeWhere((element) => element.book.id == bookId);
              await _fireStoreService
                  .updateCart(cart.toModel())
                  .then((value) async {
                await value.fold((l) {
                  emit(state.copyWith(
                    failure: some(l),
                    isLoading: false,
                  ));
                }, (r) async {
                  emit(state.copyWith(
                    cart: cart,
                    isLoading: false,
                    totalPrice: cart.items.fold(
                        0,
                        (previousValue, element) =>
                            previousValue +
                            (element.book.price! * element.quantity)),
                    totalItems: cart.items.fold(
                      0,
                      (previousValue, element) =>
                          previousValue + element.quantity,
                    ),
                  ));
                });
              });
            }
          },
          updateCart: () async {},
          updateQuantity: (bookId, quantity) async {
            CartViewModel? cart = state.cart;
            if (cart != null) {
              cart.items.firstWhere((element) {
                if (element.book.id == bookId) {
                  cart.items[cart.items.indexOf(element)] = element.copyWith(
                    quantity: quantity,
                    totalPrice: element.book.price!.toDouble() * quantity,
                  );
                }
                return element.book.id == bookId;
              });

              await _fireStoreService
                  .updateCart(cart.toModel())
                  .then((value) async {
                await value.fold((l) {
                  emit(state.copyWith(
                    failure: some(l),
                    isLoading: false,
                  ));
                }, (r) async {
                  emit(state.copyWith(
                    cart: cart,
                    isLoading: false,
                    totalPrice: cart.items.fold(
                        0,
                        (previousValue, element) =>
                            previousValue +
                            (element.book.price! * element.quantity)),
                    totalItems: cart.items.fold(
                      0,
                      (previousValue, element) =>
                          previousValue + element.quantity,
                    ),
                  ));
                });
              });
            }
          },
          deleteCart: () async {});
    });
  }
}
