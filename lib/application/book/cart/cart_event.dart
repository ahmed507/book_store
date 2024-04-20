part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.createCart() = CreateCart;

  const factory CartEvent.getCart({required String cartId}) = GetCart;

  const factory CartEvent.addBookToCart(String bookId) = AddBookToCart;

  const factory CartEvent.removeBookFromCart(String bookId) =
      RemoveBookFromCart;

  const factory CartEvent.updateCart() = UpdateCart;

  const factory CartEvent.updateQuantity(String bookId, int quantity) =
      UpdateQuantity;

  const factory CartEvent.deleteCart() = DeleteCart;
}
