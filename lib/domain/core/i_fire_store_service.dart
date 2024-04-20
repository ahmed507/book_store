import 'package:book_shop/domain/auth/user.dart';
import 'package:book_shop/domain/book/book_model.dart';
import 'package:book_shop/domain/core/failures.dart';
import 'package:book_shop/domain/shopping/cart_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class IFireStoreService {
  const IFireStoreService();

  Future<Either<FireStoreFailure, Unit>> createUser(UserModel user);

  Future<Either<FireStoreFailure, Unit>> updateUser(UserModel user);

  Future<Either<FireStoreFailure, UserModel>> getUser(String userId);

  Future<Either<FireStoreFailure, Unit>> createBook(BookModel book);

// Future<Either<FireStoreFailure, Unit>> updateBook(BookModel book);
  Future<Either<FireStoreFailure, BookModel>> getBook(String bookId);

  Future<Either<FireStoreFailure, List<BookModel>>> getBooks();

  Future<Either<FireStoreFailure, Unit>> addOrRemoveBookFromWishlist(
      String bookId, String userId);

  List<BookModel> getWishlistBooks(
      List<BookModel> books, List<String> wishlistBooksIds);

// Future<Either<FireStoreFailure, Unit>> deleteBook(String bookId);

  Future<Either<FireStoreFailure, CartModel>> createCart();

  Future<Either<FireStoreFailure, Unit>> updateCart(CartModel cart);

  Future<Either<FireStoreFailure, CartModel>> getCart(String cartId);
// Future<Either<FireStoreFailure, Unit>> deleteCart(String cartId);

// Future<Either<FireStoreFailure, Unit>> createOrder(OrderModel order);
// Future<Either<FireStoreFailure, Unit>> updateOrder(OrderModel order);
// Future<Either<FireStoreFailure, OrderModel>> getOrder(String orderId);
// Future<Either<FireStoreFailure, List<OrderModel>> getOrders();
// Future<Either<FireStoreFailure, Unit>> deleteOrder(String orderId);

// Future<Either<FireStoreFailure, Unit>> createReview(ReviewModel review);
// Future<Either<FireStoreFailure, Unit>> updateReview(ReviewModel review);
// Future<Either<FireStoreFailure, ReviewModel>> getReview(String reviewId);
// Future<Either<FireStoreFailure, List<ReviewModel>> getReviews();
// Future<Either<FireStoreFailure, Unit>> deleteReview(String reviewId);

// Future<Either<FireStoreFailure, Unit>> createWishlist(WishlistModel wishlist);
// Future<Either<FireStoreFailure, Unit>> updateWishlist(WishlistModel wishlist);
// Future<Either<FireStoreFailure, WishlistModel>> getWishlist(String wishlistId);
// Future<Either<FireStoreFailure, List<WishlistModel>> getWishlists();
// Future<Either<FireStoreFailure, Unit>> deleteWishlist(String wishlistId);
}

class FireStoreConstants {
  static const String users = 'users';
  static const String books = 'books';
  static const String carts = 'carts';
  static const String orders = 'orders';
  static const String reviews = 'reviews';
  static const String wishlists = 'wishlists';
}
