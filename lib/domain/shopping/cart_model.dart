import 'package:book_shop/domain/book/book_model.dart';
import 'package:equatable/equatable.dart';

class CartModel extends Equatable {
  final String id;
  final List<CartItem> items;

  const CartModel({required this.id, required this.items});

  CartModel copyWith({
    String? id,
    List<CartItem>? items,
  }) {
    return CartModel(
      id: id ?? this.id,
      items: items ?? this.items,
    );
  }

  CartModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        items =
            List<CartItem>.from(json['items'].map((x) => CartItem.fromJson(x)));

  CartModel.empty({required this.id}) : items = [];

  CartModel.fromViewModel(CartViewModel viewModel)
      : id = viewModel.id,
        items = viewModel.items.map((e) => CartItem.fromViewModel(e)).toList();

  Map<String, dynamic> toJson() => {
        'id': id,
        'items': List<dynamic>.from(items.map((x) => x.toJson())),
      };

  @override
  List<Object?> get props => [id, items];
}

class CartItem extends Equatable {
  final int quantity;
  final String bookId;

  const CartItem({required this.bookId, required this.quantity});

  @override
  List<Object?> get props => [quantity, bookId];

  CartItem copyWith({
    int? quantity,
    String? bookId,
  }) {
    return CartItem(
      quantity: quantity ?? this.quantity,
      bookId: bookId ?? this.bookId,
    );
  }

  CartItem.fromJson(Map<String, dynamic> json)
      : quantity = json['quantity'],
        bookId = json['book_id'];

  CartItem.fromViewModel(CartItemViewModel viewModel)
      : quantity = viewModel.quantity,
        bookId = viewModel.book.id!;

  Map<String, dynamic> toJson() => {
        'quantity': quantity,
        'book_id': bookId,
      };
}

class CartViewModel extends Equatable {
  final String id;
  final List<CartItemViewModel> items;

  const CartViewModel({
    required this.id,
    required this.items,
  });

  CartViewModel copyWith({
    String? id,
    List<CartItemViewModel>? items,
  }) {
    return CartViewModel(
      id: id ?? this.id,
      items: items ?? this.items,
    );
  }

  CartModel toModel() {
    return CartModel(
      id: id,
      items: items.map((e) => e.toModel()).toList(),
    );
  }

  @override
  List<Object?> get props => [id, items];
}

class CartItemViewModel extends Equatable {
  final int quantity;
  final BookModel book;

  final double totalPrice;

  const CartItemViewModel({
    required this.quantity,
    required this.book,
    this.totalPrice = 0,
  });

  CartItemViewModel copyWith({
    int? quantity,
    BookModel? book,
    double? totalPrice,
  }) {
    return CartItemViewModel(
      quantity: quantity ?? this.quantity,
      book: book ?? this.book,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }

  CartItem toModel() {
    return CartItem(
      quantity: quantity,
      bookId: book.id!,
    );
  }

  @override
  List<Object?> get props => [quantity, book, totalPrice];
}
