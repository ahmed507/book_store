part of 'all_books_bloc.dart';

@freezed
class AllBooksState with _$AllBooksState {
  const factory AllBooksState({
    required List<BookModel> books,
    required List<BookModel> wishlistBooks,
    required bool isLoading,
    required Option<FireStoreFailure> failure,
  }) = _AllBooksState;

  factory AllBooksState.initial() => AllBooksState(
        books: [],
        wishlistBooks: [],
        isLoading: false,
        failure: none(),
      );
}
