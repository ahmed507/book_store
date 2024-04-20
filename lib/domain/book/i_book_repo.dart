import 'package:book_shop/domain/book/book_model.dart';

abstract class IBookRepo {
  Future<List<BookModel>> getBooks();

  Future<BookModel> getBook(String id);

  Future<BookModel> addBook(BookModel book);

  Future<BookModel> updateBook(BookModel book);

  Future<void> deleteBook(String id);
}
