part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required CartViewModel? cart,
    required double totalPrice,
    required int totalItems,
    required bool isLoading,
    required Option<FireStoreFailure> failure,
  }) = _CartState;

  factory CartState.initial() => CartState(
        cart: null,
        isLoading: false,
        totalPrice: 0,
        totalItems: 0,
        failure: none(),
      );
}
