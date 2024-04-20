import 'package:book_shop/domain/auth/user.dart';
import 'package:book_shop/domain/book/book_model.dart';
import 'package:book_shop/domain/core/failures.dart';
import 'package:book_shop/domain/core/i_fire_store_service.dart';
import 'package:book_shop/domain/shopping/cart_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IFireStoreService)
class FireStoreService implements IFireStoreService {
  final FirebaseFirestore _fireStore;

  FireStoreService(this._fireStore);

  @override
  Future<Either<FireStoreFailure, UserModel>> getUser(String userId) async {
    try {
      DocumentReference docRef =
          _fireStore.collection(FireStoreConstants.users).doc(userId);
      DocumentSnapshot doc = await docRef.get();
      if (!doc.exists) {
        return left(const FireStoreFailure.notFound());
      }
      return right(UserModel.fromJson(doc.data() as Map<String, dynamic>));
    } catch (e) {
      return left(const FireStoreFailure.serverError());
    }
  }

  @override
  Future<Either<FireStoreFailure, Unit>> createUser(UserModel user) async {
    try {
      await _fireStore
          .collection(FireStoreConstants.users)
          .doc(user.id)
          .set(user.toJson());
      return right(unit);
    } catch (e) {
      return left(const FireStoreFailure.serverError());
    }
  }

  @override
  Future<Either<FireStoreFailure, Unit>> updateUser(UserModel user) async {
    try {
      await _fireStore
          .collection(FireStoreConstants.users)
          .doc(user.id)
          .update(user.toJson());
      return right(unit);
    } catch (e) {
      return left(const FireStoreFailure.serverError());
    }
  }

  @override
  Future<Either<FireStoreFailure, Unit>> createBook(book) async {
    try {
      DocumentReference docRef = await _fireStore
          .collection(FireStoreConstants.books)
          .add(book.toJson());
      await docRef.update({'id': docRef.id});
      return right(unit);
    } catch (e) {
      return left(const FireStoreFailure.serverError());
    }
  }

  @override
  Future<Either<FireStoreFailure, BookModel>> getBook(String bookId) async {
    try {
      DocumentReference docRef =
          _fireStore.collection(FireStoreConstants.books).doc(bookId);
      DocumentSnapshot doc = await docRef.get();
      if (!doc.exists) {
        return left(const FireStoreFailure.notFound());
      }
      return right(BookModel.fromJson(doc.data() as Map<String, dynamic>));
    } catch (e) {
      return left(const FireStoreFailure.serverError());
    }
  }

  @override
  Future<Either<FireStoreFailure, List<BookModel>>> getBooks() async {
    try {
      QuerySnapshot querySnapshot =
          await _fireStore.collection(FireStoreConstants.books).get();
      print(querySnapshot.docs);
      List<BookModel> books = querySnapshot.docs
          .map((doc) => BookModel.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
      return right(books);
    } catch (e) {
      return left(const FireStoreFailure.serverError());
    }
  }

  @override
  Future<Either<FireStoreFailure, Unit>> addOrRemoveBookFromWishlist(
      String bookId, String userId) async {
    try {
      DocumentReference docRef =
          _fireStore.collection(FireStoreConstants.users).doc(userId);
      DocumentSnapshot doc = await docRef.get();
      if (!doc.exists) {
        return left(const FireStoreFailure.notFound());
      }
      UserModel user = UserModel.fromJson(doc.data() as Map<String, dynamic>);
      if (user.wishlistsIds == null) {
        user = user.copyWith(wishlistsIds: [bookId]);
      } else {
        if (user.wishlistsIds!.contains(bookId)) {
          user.wishlistsIds!.remove(bookId);
        } else {
          user.wishlistsIds!.add(bookId);
        }
      }
      await docRef.update(user.toJson());
      return right(unit);
    } catch (e) {
      return left(const FireStoreFailure.serverError());
    }
  }

  @override
  List<BookModel> getWishlistBooks(
      List<BookModel> books, List<String> wishlistBooksIds) {
    // change book.isInWishList to true if book.id is in wishlistBooksIds
    return books.map((book) {
      if (wishlistBooksIds.contains(book.id)) {
        book.isInWishlist = true;
      }
      return book;
    }).toList();
  }

  @override
  Future<Either<FireStoreFailure, CartModel>> createCart() async {
    try {
      CartModel cart = const CartModel(id: '', items: []);
      DocumentReference docRef = await _fireStore
          .collection(FireStoreConstants.carts)
          .add(cart.toJson());
      await docRef.update({'id': docRef.id});

      return right(cart.copyWith(id: docRef.id));
    } catch (e) {
      return left(const FireStoreFailure.serverError());
    }
  }

  @override
  Future<Either<FireStoreFailure, CartModel>> getCart(String cartId) async {
    try {
      DocumentReference docRef =
          _fireStore.collection(FireStoreConstants.carts).doc(cartId);
      DocumentSnapshot doc = await docRef.get();
      if (!doc.exists) {
        return left(const FireStoreFailure.notFound());
      }
      return right(CartModel.fromJson(doc.data() as Map<String, dynamic>));
    } catch (e) {
      return left(const FireStoreFailure.serverError());
    }
  }

  @override
  Future<Either<FireStoreFailure, Unit>> updateCart(CartModel cart) async {
    try {
      await _fireStore
          .collection(FireStoreConstants.carts)
          .doc(cart.id)
          .update(cart.toJson());
      return right(unit);
    } catch (e) {
      return left(const FireStoreFailure.serverError());
    }
  }

// @override
// Future<Either<FireStoreFailure, List<BookModel>>> getWishlistBooks(
//     String userId) async {
//   try {
//     DocumentReference userDocRef =
//         _fireStore.collection(FireStoreConstants.users).doc(userId);
//     DocumentSnapshot doc = await userDocRef.get();
//     if (!doc.exists) {
//       return left(const FireStoreFailure.notFound());
//     }
//     UserModel user = UserModel.fromJson(doc.data() as Map<String, dynamic>);
//
//     List<BookModel> books = [];
//     if (user.wishlistsIds != null) {
//       books = await Future.wait(user.wishlistsIds!.map((bookId) async {
//         DocumentReference bookDocRef =
//             _fireStore.collection(FireStoreConstants.books).doc(bookId);
//         DocumentSnapshot doc = await bookDocRef.get();
//         return BookModel.fromJson(doc.data() as Map<String, dynamic>);
//       }));
//     }
//     return right(books);
//   } catch (e) {
//     return left(const FireStoreFailure.serverError());
//   }
// }
}
