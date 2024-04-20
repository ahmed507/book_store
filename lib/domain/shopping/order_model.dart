import 'package:book_shop/domain/shopping/cart_model.dart';

class OrderModel {
  final String id;
  final String userId;
  final String cartId;
  final String status;
  final String updatedAt;

  OrderModel({
    required this.id,
    required this.userId,
    required this.cartId,
    required this.status,
    required this.updatedAt,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      id: json['id'],
      userId: json['user_id'],
      cartId: json['cart_id'],
      status: json['status'],
      updatedAt: json['updated_at'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'user_id': userId,
      'cart_id': cartId,
      'status': status,
      'updated_at': updatedAt,
    };
  }
}

class OrderViewModel {
  final String id;
  final String userId;
  final CartModel cart;
  final String status;
  final String updatedAt;

  OrderViewModel({
    required this.id,
    required this.userId,
    required this.cart,
    required this.status,
    required this.updatedAt,
  });

  factory OrderViewModel.fromModel(OrderModel model, CartModel cart) {
    return OrderViewModel(
      id: model.id,
      userId: model.userId,
      cart: cart,
      status: model.status,
      updatedAt: model.updatedAt,
    );
  }
}
