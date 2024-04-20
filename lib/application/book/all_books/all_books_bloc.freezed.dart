// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_books_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AllBooksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllBooks,
    required TResult Function(String bookId) addOrRemoveBookFromWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllBooks,
    TResult? Function(String bookId)? addOrRemoveBookFromWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllBooks,
    TResult Function(String bookId)? addOrRemoveBookFromWishlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllBooks value) getAllBooks,
    required TResult Function(_AddOrRemoveBookFromWishlist value)
        addOrRemoveBookFromWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllBooks value)? getAllBooks,
    TResult? Function(_AddOrRemoveBookFromWishlist value)?
        addOrRemoveBookFromWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllBooks value)? getAllBooks,
    TResult Function(_AddOrRemoveBookFromWishlist value)?
        addOrRemoveBookFromWishlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllBooksEventCopyWith<$Res> {
  factory $AllBooksEventCopyWith(
          AllBooksEvent value, $Res Function(AllBooksEvent) then) =
      _$AllBooksEventCopyWithImpl<$Res, AllBooksEvent>;
}

/// @nodoc
class _$AllBooksEventCopyWithImpl<$Res, $Val extends AllBooksEvent>
    implements $AllBooksEventCopyWith<$Res> {
  _$AllBooksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllBooksImplCopyWith<$Res> {
  factory _$$GetAllBooksImplCopyWith(
          _$GetAllBooksImpl value, $Res Function(_$GetAllBooksImpl) then) =
      __$$GetAllBooksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllBooksImplCopyWithImpl<$Res>
    extends _$AllBooksEventCopyWithImpl<$Res, _$GetAllBooksImpl>
    implements _$$GetAllBooksImplCopyWith<$Res> {
  __$$GetAllBooksImplCopyWithImpl(
      _$GetAllBooksImpl _value, $Res Function(_$GetAllBooksImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllBooksImpl implements _GetAllBooks {
  const _$GetAllBooksImpl();

  @override
  String toString() {
    return 'AllBooksEvent.getAllBooks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllBooksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllBooks,
    required TResult Function(String bookId) addOrRemoveBookFromWishlist,
  }) {
    return getAllBooks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllBooks,
    TResult? Function(String bookId)? addOrRemoveBookFromWishlist,
  }) {
    return getAllBooks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllBooks,
    TResult Function(String bookId)? addOrRemoveBookFromWishlist,
    required TResult orElse(),
  }) {
    if (getAllBooks != null) {
      return getAllBooks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllBooks value) getAllBooks,
    required TResult Function(_AddOrRemoveBookFromWishlist value)
        addOrRemoveBookFromWishlist,
  }) {
    return getAllBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllBooks value)? getAllBooks,
    TResult? Function(_AddOrRemoveBookFromWishlist value)?
        addOrRemoveBookFromWishlist,
  }) {
    return getAllBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllBooks value)? getAllBooks,
    TResult Function(_AddOrRemoveBookFromWishlist value)?
        addOrRemoveBookFromWishlist,
    required TResult orElse(),
  }) {
    if (getAllBooks != null) {
      return getAllBooks(this);
    }
    return orElse();
  }
}

abstract class _GetAllBooks implements AllBooksEvent {
  const factory _GetAllBooks() = _$GetAllBooksImpl;
}

/// @nodoc
abstract class _$$AddOrRemoveBookFromWishlistImplCopyWith<$Res> {
  factory _$$AddOrRemoveBookFromWishlistImplCopyWith(
          _$AddOrRemoveBookFromWishlistImpl value,
          $Res Function(_$AddOrRemoveBookFromWishlistImpl) then) =
      __$$AddOrRemoveBookFromWishlistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookId});
}

/// @nodoc
class __$$AddOrRemoveBookFromWishlistImplCopyWithImpl<$Res>
    extends _$AllBooksEventCopyWithImpl<$Res, _$AddOrRemoveBookFromWishlistImpl>
    implements _$$AddOrRemoveBookFromWishlistImplCopyWith<$Res> {
  __$$AddOrRemoveBookFromWishlistImplCopyWithImpl(
      _$AddOrRemoveBookFromWishlistImpl _value,
      $Res Function(_$AddOrRemoveBookFromWishlistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
  }) {
    return _then(_$AddOrRemoveBookFromWishlistImpl(
      bookId: null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddOrRemoveBookFromWishlistImpl
    implements _AddOrRemoveBookFromWishlist {
  const _$AddOrRemoveBookFromWishlistImpl({required this.bookId});

  @override
  final String bookId;

  @override
  String toString() {
    return 'AllBooksEvent.addOrRemoveBookFromWishlist(bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddOrRemoveBookFromWishlistImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddOrRemoveBookFromWishlistImplCopyWith<_$AddOrRemoveBookFromWishlistImpl>
      get copyWith => __$$AddOrRemoveBookFromWishlistImplCopyWithImpl<
          _$AddOrRemoveBookFromWishlistImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllBooks,
    required TResult Function(String bookId) addOrRemoveBookFromWishlist,
  }) {
    return addOrRemoveBookFromWishlist(bookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllBooks,
    TResult? Function(String bookId)? addOrRemoveBookFromWishlist,
  }) {
    return addOrRemoveBookFromWishlist?.call(bookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllBooks,
    TResult Function(String bookId)? addOrRemoveBookFromWishlist,
    required TResult orElse(),
  }) {
    if (addOrRemoveBookFromWishlist != null) {
      return addOrRemoveBookFromWishlist(bookId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllBooks value) getAllBooks,
    required TResult Function(_AddOrRemoveBookFromWishlist value)
        addOrRemoveBookFromWishlist,
  }) {
    return addOrRemoveBookFromWishlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllBooks value)? getAllBooks,
    TResult? Function(_AddOrRemoveBookFromWishlist value)?
        addOrRemoveBookFromWishlist,
  }) {
    return addOrRemoveBookFromWishlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllBooks value)? getAllBooks,
    TResult Function(_AddOrRemoveBookFromWishlist value)?
        addOrRemoveBookFromWishlist,
    required TResult orElse(),
  }) {
    if (addOrRemoveBookFromWishlist != null) {
      return addOrRemoveBookFromWishlist(this);
    }
    return orElse();
  }
}

abstract class _AddOrRemoveBookFromWishlist implements AllBooksEvent {
  const factory _AddOrRemoveBookFromWishlist({required final String bookId}) =
      _$AddOrRemoveBookFromWishlistImpl;

  String get bookId;
  @JsonKey(ignore: true)
  _$$AddOrRemoveBookFromWishlistImplCopyWith<_$AddOrRemoveBookFromWishlistImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AllBooksState {
  List<BookModel> get books => throw _privateConstructorUsedError;
  List<BookModel> get wishlistBooks => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<FireStoreFailure> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllBooksStateCopyWith<AllBooksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllBooksStateCopyWith<$Res> {
  factory $AllBooksStateCopyWith(
          AllBooksState value, $Res Function(AllBooksState) then) =
      _$AllBooksStateCopyWithImpl<$Res, AllBooksState>;
  @useResult
  $Res call(
      {List<BookModel> books,
      List<BookModel> wishlistBooks,
      bool isLoading,
      Option<FireStoreFailure> failure});
}

/// @nodoc
class _$AllBooksStateCopyWithImpl<$Res, $Val extends AllBooksState>
    implements $AllBooksStateCopyWith<$Res> {
  _$AllBooksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? wishlistBooks = null,
    Object? isLoading = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      books: null == books
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      wishlistBooks: null == wishlistBooks
          ? _value.wishlistBooks
          : wishlistBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<FireStoreFailure>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllBooksStateImplCopyWith<$Res>
    implements $AllBooksStateCopyWith<$Res> {
  factory _$$AllBooksStateImplCopyWith(
          _$AllBooksStateImpl value, $Res Function(_$AllBooksStateImpl) then) =
      __$$AllBooksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BookModel> books,
      List<BookModel> wishlistBooks,
      bool isLoading,
      Option<FireStoreFailure> failure});
}

/// @nodoc
class __$$AllBooksStateImplCopyWithImpl<$Res>
    extends _$AllBooksStateCopyWithImpl<$Res, _$AllBooksStateImpl>
    implements _$$AllBooksStateImplCopyWith<$Res> {
  __$$AllBooksStateImplCopyWithImpl(
      _$AllBooksStateImpl _value, $Res Function(_$AllBooksStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? wishlistBooks = null,
    Object? isLoading = null,
    Object? failure = null,
  }) {
    return _then(_$AllBooksStateImpl(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      wishlistBooks: null == wishlistBooks
          ? _value._wishlistBooks
          : wishlistBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<FireStoreFailure>,
    ));
  }
}

/// @nodoc

class _$AllBooksStateImpl implements _AllBooksState {
  const _$AllBooksStateImpl(
      {required final List<BookModel> books,
      required final List<BookModel> wishlistBooks,
      required this.isLoading,
      required this.failure})
      : _books = books,
        _wishlistBooks = wishlistBooks;

  final List<BookModel> _books;
  @override
  List<BookModel> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  final List<BookModel> _wishlistBooks;
  @override
  List<BookModel> get wishlistBooks {
    if (_wishlistBooks is EqualUnmodifiableListView) return _wishlistBooks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishlistBooks);
  }

  @override
  final bool isLoading;
  @override
  final Option<FireStoreFailure> failure;

  @override
  String toString() {
    return 'AllBooksState(books: $books, wishlistBooks: $wishlistBooks, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllBooksStateImpl &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            const DeepCollectionEquality()
                .equals(other._wishlistBooks, _wishlistBooks) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_books),
      const DeepCollectionEquality().hash(_wishlistBooks),
      isLoading,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllBooksStateImplCopyWith<_$AllBooksStateImpl> get copyWith =>
      __$$AllBooksStateImplCopyWithImpl<_$AllBooksStateImpl>(this, _$identity);
}

abstract class _AllBooksState implements AllBooksState {
  const factory _AllBooksState(
      {required final List<BookModel> books,
      required final List<BookModel> wishlistBooks,
      required final bool isLoading,
      required final Option<FireStoreFailure> failure}) = _$AllBooksStateImpl;

  @override
  List<BookModel> get books;
  @override
  List<BookModel> get wishlistBooks;
  @override
  bool get isLoading;
  @override
  Option<FireStoreFailure> get failure;
  @override
  @JsonKey(ignore: true)
  _$$AllBooksStateImplCopyWith<_$AllBooksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
