import 'package:book_shop/domain/auth/i_auth_facade.dart';
import 'package:book_shop/domain/book/book_model.dart';
import 'package:book_shop/domain/core/failures.dart';
import 'package:book_shop/domain/core/i_fire_store_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'all_books_bloc.freezed.dart';
part 'all_books_event.dart';
part 'all_books_state.dart';

@lazySingleton
class AllBooksBloc extends Bloc<AllBooksEvent, AllBooksState> {
  final IFireStoreService _fireStoreService;
  final IAuthFacade _authFacade;

  AllBooksBloc(
    this._fireStoreService,
    this._authFacade,
  ) : super(AllBooksState.initial()) {
    on<AllBooksEvent>((event, emit) async {
      await event.when(getAllBooks: () async {
        emit(state.copyWith(isLoading: true));
        List<BookModel> wishlistBooks = [];
        await _authFacade.getSignedInUser().then((value) async {
          await value.fold((l) => null, (userOption) async {
            await userOption.fold(() => null, (user) async {
              await _fireStoreService.getBooks().then((books) {
                books.fold((l) {
                  emit(state.copyWith(
                    failure: some(l),
                    isLoading: false,
                  ));
                }, (books) {
                  if (user.wishlistsIds != null) {
                    wishlistBooks = _fireStoreService
                        .getWishlistBooks(
                          books,
                          user.wishlistsIds!,
                        )
                        .where((element) => element.isInWishList == true)
                        .toList();
                  }
                  emit(state.copyWith(
                    wishlistBooks: wishlistBooks,
                    books: books,
                    isLoading: false,
                  ));
                });
              });
            });
          });
        });
      }, addOrRemoveBookFromWishlist: (bookId) async {
        await _authFacade.getSignedInUser().then((value) async {
          await value.fold((l) => null, (userOption) async {
            await userOption.fold(() => null, (user) async {
              List<BookModel> allBooks = List.from(state.books);
              await _fireStoreService
                  .addOrRemoveBookFromWishlist(
                bookId,
                user.id,
              )
                  .then((result) async {
                List<BookModel> wishlistBooks = List.from(state.wishlistBooks);
                if (result.isRight()) {
                  BookModel book = state.books.firstWhere(
                    (element) => element.id == bookId,
                  );
                  book.isInWishlist = !book.isInWishList;
                  int index =
                      allBooks.indexWhere((element) => element.id == bookId);
                  allBooks.removeAt(index);
                  allBooks.insert(index, book);

                  if (wishlistBooks.any((element) => element.id == bookId)) {
                    wishlistBooks
                        .removeWhere((element) => element.id == bookId);
                  } else {
                    final Either<FireStoreFailure, BookModel> book =
                        await _fireStoreService.getBook(bookId);
                    book.fold((l) => null, (r) {
                      r.isInWishlist = true;
                      wishlistBooks.add(r);
                    });
                  }
                }
                emit(state.copyWith(
                  books: allBooks,
                  wishlistBooks: wishlistBooks,
                  failure: optionOf(result.fold((l) => l, (r) => null)),
                ));
              });
            });
          });
        });
      });
    });
  }
}
