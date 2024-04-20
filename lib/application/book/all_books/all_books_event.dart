part of 'all_books_bloc.dart';

@freezed
class AllBooksEvent with _$AllBooksEvent {
  const factory AllBooksEvent.getAllBooks() = _GetAllBooks;

  const factory AllBooksEvent.addOrRemoveBookFromWishlist({
    required String bookId,
  }) = _AddOrRemoveBookFromWishlist;
}
