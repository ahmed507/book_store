// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createCart,
    required TResult Function(String cartId) getCart,
    required TResult Function(String bookId) addBookToCart,
    required TResult Function(String bookId) removeBookFromCart,
    required TResult Function() updateCart,
    required TResult Function(String bookId, int quantity) updateQuantity,
    required TResult Function() deleteCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createCart,
    TResult? Function(String cartId)? getCart,
    TResult? Function(String bookId)? addBookToCart,
    TResult? Function(String bookId)? removeBookFromCart,
    TResult? Function()? updateCart,
    TResult? Function(String bookId, int quantity)? updateQuantity,
    TResult? Function()? deleteCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createCart,
    TResult Function(String cartId)? getCart,
    TResult Function(String bookId)? addBookToCart,
    TResult Function(String bookId)? removeBookFromCart,
    TResult Function()? updateCart,
    TResult Function(String bookId, int quantity)? updateQuantity,
    TResult Function()? deleteCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateCart value) createCart,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddBookToCart value) addBookToCart,
    required TResult Function(RemoveBookFromCart value) removeBookFromCart,
    required TResult Function(UpdateCart value) updateCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(DeleteCart value) deleteCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateCart value)? createCart,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddBookToCart value)? addBookToCart,
    TResult? Function(RemoveBookFromCart value)? removeBookFromCart,
    TResult? Function(UpdateCart value)? updateCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(DeleteCart value)? deleteCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateCart value)? createCart,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddBookToCart value)? addBookToCart,
    TResult Function(RemoveBookFromCart value)? removeBookFromCart,
    TResult Function(UpdateCart value)? updateCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateCartImplCopyWith<$Res> {
  factory _$$CreateCartImplCopyWith(
          _$CreateCartImpl value, $Res Function(_$CreateCartImpl) then) =
      __$$CreateCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CreateCartImpl>
    implements _$$CreateCartImplCopyWith<$Res> {
  __$$CreateCartImplCopyWithImpl(
      _$CreateCartImpl _value, $Res Function(_$CreateCartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateCartImpl implements CreateCart {
  const _$CreateCartImpl();

  @override
  String toString() {
    return 'CartEvent.createCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreateCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createCart,
    required TResult Function(String cartId) getCart,
    required TResult Function(String bookId) addBookToCart,
    required TResult Function(String bookId) removeBookFromCart,
    required TResult Function() updateCart,
    required TResult Function(String bookId, int quantity) updateQuantity,
    required TResult Function() deleteCart,
  }) {
    return createCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createCart,
    TResult? Function(String cartId)? getCart,
    TResult? Function(String bookId)? addBookToCart,
    TResult? Function(String bookId)? removeBookFromCart,
    TResult? Function()? updateCart,
    TResult? Function(String bookId, int quantity)? updateQuantity,
    TResult? Function()? deleteCart,
  }) {
    return createCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createCart,
    TResult Function(String cartId)? getCart,
    TResult Function(String bookId)? addBookToCart,
    TResult Function(String bookId)? removeBookFromCart,
    TResult Function()? updateCart,
    TResult Function(String bookId, int quantity)? updateQuantity,
    TResult Function()? deleteCart,
    required TResult orElse(),
  }) {
    if (createCart != null) {
      return createCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateCart value) createCart,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddBookToCart value) addBookToCart,
    required TResult Function(RemoveBookFromCart value) removeBookFromCart,
    required TResult Function(UpdateCart value) updateCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(DeleteCart value) deleteCart,
  }) {
    return createCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateCart value)? createCart,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddBookToCart value)? addBookToCart,
    TResult? Function(RemoveBookFromCart value)? removeBookFromCart,
    TResult? Function(UpdateCart value)? updateCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(DeleteCart value)? deleteCart,
  }) {
    return createCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateCart value)? createCart,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddBookToCart value)? addBookToCart,
    TResult Function(RemoveBookFromCart value)? removeBookFromCart,
    TResult Function(UpdateCart value)? updateCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (createCart != null) {
      return createCart(this);
    }
    return orElse();
  }
}

abstract class CreateCart implements CartEvent {
  const factory CreateCart() = _$CreateCartImpl;
}

/// @nodoc
abstract class _$$GetCartImplCopyWith<$Res> {
  factory _$$GetCartImplCopyWith(
          _$GetCartImpl value, $Res Function(_$GetCartImpl) then) =
      __$$GetCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cartId});
}

/// @nodoc
class __$$GetCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetCartImpl>
    implements _$$GetCartImplCopyWith<$Res> {
  __$$GetCartImplCopyWithImpl(
      _$GetCartImpl _value, $Res Function(_$GetCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartId = null,
  }) {
    return _then(_$GetCartImpl(
      cartId: null == cartId
          ? _value.cartId
          : cartId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCartImpl implements GetCart {
  const _$GetCartImpl({required this.cartId});

  @override
  final String cartId;

  @override
  String toString() {
    return 'CartEvent.getCart(cartId: $cartId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCartImpl &&
            (identical(other.cartId, cartId) || other.cartId == cartId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCartImplCopyWith<_$GetCartImpl> get copyWith =>
      __$$GetCartImplCopyWithImpl<_$GetCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createCart,
    required TResult Function(String cartId) getCart,
    required TResult Function(String bookId) addBookToCart,
    required TResult Function(String bookId) removeBookFromCart,
    required TResult Function() updateCart,
    required TResult Function(String bookId, int quantity) updateQuantity,
    required TResult Function() deleteCart,
  }) {
    return getCart(cartId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createCart,
    TResult? Function(String cartId)? getCart,
    TResult? Function(String bookId)? addBookToCart,
    TResult? Function(String bookId)? removeBookFromCart,
    TResult? Function()? updateCart,
    TResult? Function(String bookId, int quantity)? updateQuantity,
    TResult? Function()? deleteCart,
  }) {
    return getCart?.call(cartId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createCart,
    TResult Function(String cartId)? getCart,
    TResult Function(String bookId)? addBookToCart,
    TResult Function(String bookId)? removeBookFromCart,
    TResult Function()? updateCart,
    TResult Function(String bookId, int quantity)? updateQuantity,
    TResult Function()? deleteCart,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(cartId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateCart value) createCart,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddBookToCart value) addBookToCart,
    required TResult Function(RemoveBookFromCart value) removeBookFromCart,
    required TResult Function(UpdateCart value) updateCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(DeleteCart value) deleteCart,
  }) {
    return getCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateCart value)? createCart,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddBookToCart value)? addBookToCart,
    TResult? Function(RemoveBookFromCart value)? removeBookFromCart,
    TResult? Function(UpdateCart value)? updateCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(DeleteCart value)? deleteCart,
  }) {
    return getCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateCart value)? createCart,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddBookToCart value)? addBookToCart,
    TResult Function(RemoveBookFromCart value)? removeBookFromCart,
    TResult Function(UpdateCart value)? updateCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (getCart != null) {
      return getCart(this);
    }
    return orElse();
  }
}

abstract class GetCart implements CartEvent {
  const factory GetCart({required final String cartId}) = _$GetCartImpl;

  String get cartId;
  @JsonKey(ignore: true)
  _$$GetCartImplCopyWith<_$GetCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddBookToCartImplCopyWith<$Res> {
  factory _$$AddBookToCartImplCopyWith(
          _$AddBookToCartImpl value, $Res Function(_$AddBookToCartImpl) then) =
      __$$AddBookToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookId});
}

/// @nodoc
class __$$AddBookToCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddBookToCartImpl>
    implements _$$AddBookToCartImplCopyWith<$Res> {
  __$$AddBookToCartImplCopyWithImpl(
      _$AddBookToCartImpl _value, $Res Function(_$AddBookToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
  }) {
    return _then(_$AddBookToCartImpl(
      null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddBookToCartImpl implements AddBookToCart {
  const _$AddBookToCartImpl(this.bookId);

  @override
  final String bookId;

  @override
  String toString() {
    return 'CartEvent.addBookToCart(bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBookToCartImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBookToCartImplCopyWith<_$AddBookToCartImpl> get copyWith =>
      __$$AddBookToCartImplCopyWithImpl<_$AddBookToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createCart,
    required TResult Function(String cartId) getCart,
    required TResult Function(String bookId) addBookToCart,
    required TResult Function(String bookId) removeBookFromCart,
    required TResult Function() updateCart,
    required TResult Function(String bookId, int quantity) updateQuantity,
    required TResult Function() deleteCart,
  }) {
    return addBookToCart(bookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createCart,
    TResult? Function(String cartId)? getCart,
    TResult? Function(String bookId)? addBookToCart,
    TResult? Function(String bookId)? removeBookFromCart,
    TResult? Function()? updateCart,
    TResult? Function(String bookId, int quantity)? updateQuantity,
    TResult? Function()? deleteCart,
  }) {
    return addBookToCart?.call(bookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createCart,
    TResult Function(String cartId)? getCart,
    TResult Function(String bookId)? addBookToCart,
    TResult Function(String bookId)? removeBookFromCart,
    TResult Function()? updateCart,
    TResult Function(String bookId, int quantity)? updateQuantity,
    TResult Function()? deleteCart,
    required TResult orElse(),
  }) {
    if (addBookToCart != null) {
      return addBookToCart(bookId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateCart value) createCart,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddBookToCart value) addBookToCart,
    required TResult Function(RemoveBookFromCart value) removeBookFromCart,
    required TResult Function(UpdateCart value) updateCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(DeleteCart value) deleteCart,
  }) {
    return addBookToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateCart value)? createCart,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddBookToCart value)? addBookToCart,
    TResult? Function(RemoveBookFromCart value)? removeBookFromCart,
    TResult? Function(UpdateCart value)? updateCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(DeleteCart value)? deleteCart,
  }) {
    return addBookToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateCart value)? createCart,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddBookToCart value)? addBookToCart,
    TResult Function(RemoveBookFromCart value)? removeBookFromCart,
    TResult Function(UpdateCart value)? updateCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (addBookToCart != null) {
      return addBookToCart(this);
    }
    return orElse();
  }
}

abstract class AddBookToCart implements CartEvent {
  const factory AddBookToCart(final String bookId) = _$AddBookToCartImpl;

  String get bookId;
  @JsonKey(ignore: true)
  _$$AddBookToCartImplCopyWith<_$AddBookToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveBookFromCartImplCopyWith<$Res> {
  factory _$$RemoveBookFromCartImplCopyWith(_$RemoveBookFromCartImpl value,
          $Res Function(_$RemoveBookFromCartImpl) then) =
      __$$RemoveBookFromCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookId});
}

/// @nodoc
class __$$RemoveBookFromCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemoveBookFromCartImpl>
    implements _$$RemoveBookFromCartImplCopyWith<$Res> {
  __$$RemoveBookFromCartImplCopyWithImpl(_$RemoveBookFromCartImpl _value,
      $Res Function(_$RemoveBookFromCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
  }) {
    return _then(_$RemoveBookFromCartImpl(
      null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveBookFromCartImpl implements RemoveBookFromCart {
  const _$RemoveBookFromCartImpl(this.bookId);

  @override
  final String bookId;

  @override
  String toString() {
    return 'CartEvent.removeBookFromCart(bookId: $bookId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveBookFromCartImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveBookFromCartImplCopyWith<_$RemoveBookFromCartImpl> get copyWith =>
      __$$RemoveBookFromCartImplCopyWithImpl<_$RemoveBookFromCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createCart,
    required TResult Function(String cartId) getCart,
    required TResult Function(String bookId) addBookToCart,
    required TResult Function(String bookId) removeBookFromCart,
    required TResult Function() updateCart,
    required TResult Function(String bookId, int quantity) updateQuantity,
    required TResult Function() deleteCart,
  }) {
    return removeBookFromCart(bookId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createCart,
    TResult? Function(String cartId)? getCart,
    TResult? Function(String bookId)? addBookToCart,
    TResult? Function(String bookId)? removeBookFromCart,
    TResult? Function()? updateCart,
    TResult? Function(String bookId, int quantity)? updateQuantity,
    TResult? Function()? deleteCart,
  }) {
    return removeBookFromCart?.call(bookId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createCart,
    TResult Function(String cartId)? getCart,
    TResult Function(String bookId)? addBookToCart,
    TResult Function(String bookId)? removeBookFromCart,
    TResult Function()? updateCart,
    TResult Function(String bookId, int quantity)? updateQuantity,
    TResult Function()? deleteCart,
    required TResult orElse(),
  }) {
    if (removeBookFromCart != null) {
      return removeBookFromCart(bookId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateCart value) createCart,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddBookToCart value) addBookToCart,
    required TResult Function(RemoveBookFromCart value) removeBookFromCart,
    required TResult Function(UpdateCart value) updateCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(DeleteCart value) deleteCart,
  }) {
    return removeBookFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateCart value)? createCart,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddBookToCart value)? addBookToCart,
    TResult? Function(RemoveBookFromCart value)? removeBookFromCart,
    TResult? Function(UpdateCart value)? updateCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(DeleteCart value)? deleteCart,
  }) {
    return removeBookFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateCart value)? createCart,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddBookToCart value)? addBookToCart,
    TResult Function(RemoveBookFromCart value)? removeBookFromCart,
    TResult Function(UpdateCart value)? updateCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (removeBookFromCart != null) {
      return removeBookFromCart(this);
    }
    return orElse();
  }
}

abstract class RemoveBookFromCart implements CartEvent {
  const factory RemoveBookFromCart(final String bookId) =
      _$RemoveBookFromCartImpl;

  String get bookId;
  @JsonKey(ignore: true)
  _$$RemoveBookFromCartImplCopyWith<_$RemoveBookFromCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCartImplCopyWith<$Res> {
  factory _$$UpdateCartImplCopyWith(
          _$UpdateCartImpl value, $Res Function(_$UpdateCartImpl) then) =
      __$$UpdateCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateCartImpl>
    implements _$$UpdateCartImplCopyWith<$Res> {
  __$$UpdateCartImplCopyWithImpl(
      _$UpdateCartImpl _value, $Res Function(_$UpdateCartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UpdateCartImpl implements UpdateCart {
  const _$UpdateCartImpl();

  @override
  String toString() {
    return 'CartEvent.updateCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createCart,
    required TResult Function(String cartId) getCart,
    required TResult Function(String bookId) addBookToCart,
    required TResult Function(String bookId) removeBookFromCart,
    required TResult Function() updateCart,
    required TResult Function(String bookId, int quantity) updateQuantity,
    required TResult Function() deleteCart,
  }) {
    return updateCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createCart,
    TResult? Function(String cartId)? getCart,
    TResult? Function(String bookId)? addBookToCart,
    TResult? Function(String bookId)? removeBookFromCart,
    TResult? Function()? updateCart,
    TResult? Function(String bookId, int quantity)? updateQuantity,
    TResult? Function()? deleteCart,
  }) {
    return updateCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createCart,
    TResult Function(String cartId)? getCart,
    TResult Function(String bookId)? addBookToCart,
    TResult Function(String bookId)? removeBookFromCart,
    TResult Function()? updateCart,
    TResult Function(String bookId, int quantity)? updateQuantity,
    TResult Function()? deleteCart,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateCart value) createCart,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddBookToCart value) addBookToCart,
    required TResult Function(RemoveBookFromCart value) removeBookFromCart,
    required TResult Function(UpdateCart value) updateCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(DeleteCart value) deleteCart,
  }) {
    return updateCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateCart value)? createCart,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddBookToCart value)? addBookToCart,
    TResult? Function(RemoveBookFromCart value)? removeBookFromCart,
    TResult? Function(UpdateCart value)? updateCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(DeleteCart value)? deleteCart,
  }) {
    return updateCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateCart value)? createCart,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddBookToCart value)? addBookToCart,
    TResult Function(RemoveBookFromCart value)? removeBookFromCart,
    TResult Function(UpdateCart value)? updateCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart(this);
    }
    return orElse();
  }
}

abstract class UpdateCart implements CartEvent {
  const factory UpdateCart() = _$UpdateCartImpl;
}

/// @nodoc
abstract class _$$UpdateQuantityImplCopyWith<$Res> {
  factory _$$UpdateQuantityImplCopyWith(_$UpdateQuantityImpl value,
          $Res Function(_$UpdateQuantityImpl) then) =
      __$$UpdateQuantityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String bookId, int quantity});
}

/// @nodoc
class __$$UpdateQuantityImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateQuantityImpl>
    implements _$$UpdateQuantityImplCopyWith<$Res> {
  __$$UpdateQuantityImplCopyWithImpl(
      _$UpdateQuantityImpl _value, $Res Function(_$UpdateQuantityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bookId = null,
    Object? quantity = null,
  }) {
    return _then(_$UpdateQuantityImpl(
      null == bookId
          ? _value.bookId
          : bookId // ignore: cast_nullable_to_non_nullable
              as String,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateQuantityImpl implements UpdateQuantity {
  const _$UpdateQuantityImpl(this.bookId, this.quantity);

  @override
  final String bookId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.updateQuantity(bookId: $bookId, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuantityImpl &&
            (identical(other.bookId, bookId) || other.bookId == bookId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bookId, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuantityImplCopyWith<_$UpdateQuantityImpl> get copyWith =>
      __$$UpdateQuantityImplCopyWithImpl<_$UpdateQuantityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createCart,
    required TResult Function(String cartId) getCart,
    required TResult Function(String bookId) addBookToCart,
    required TResult Function(String bookId) removeBookFromCart,
    required TResult Function() updateCart,
    required TResult Function(String bookId, int quantity) updateQuantity,
    required TResult Function() deleteCart,
  }) {
    return updateQuantity(bookId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createCart,
    TResult? Function(String cartId)? getCart,
    TResult? Function(String bookId)? addBookToCart,
    TResult? Function(String bookId)? removeBookFromCart,
    TResult? Function()? updateCart,
    TResult? Function(String bookId, int quantity)? updateQuantity,
    TResult? Function()? deleteCart,
  }) {
    return updateQuantity?.call(bookId, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createCart,
    TResult Function(String cartId)? getCart,
    TResult Function(String bookId)? addBookToCart,
    TResult Function(String bookId)? removeBookFromCart,
    TResult Function()? updateCart,
    TResult Function(String bookId, int quantity)? updateQuantity,
    TResult Function()? deleteCart,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(bookId, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateCart value) createCart,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddBookToCart value) addBookToCart,
    required TResult Function(RemoveBookFromCart value) removeBookFromCart,
    required TResult Function(UpdateCart value) updateCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(DeleteCart value) deleteCart,
  }) {
    return updateQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateCart value)? createCart,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddBookToCart value)? addBookToCart,
    TResult? Function(RemoveBookFromCart value)? removeBookFromCart,
    TResult? Function(UpdateCart value)? updateCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(DeleteCart value)? deleteCart,
  }) {
    return updateQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateCart value)? createCart,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddBookToCart value)? addBookToCart,
    TResult Function(RemoveBookFromCart value)? removeBookFromCart,
    TResult Function(UpdateCart value)? updateCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (updateQuantity != null) {
      return updateQuantity(this);
    }
    return orElse();
  }
}

abstract class UpdateQuantity implements CartEvent {
  const factory UpdateQuantity(final String bookId, final int quantity) =
      _$UpdateQuantityImpl;

  String get bookId;
  int get quantity;
  @JsonKey(ignore: true)
  _$$UpdateQuantityImplCopyWith<_$UpdateQuantityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCartImplCopyWith<$Res> {
  factory _$$DeleteCartImplCopyWith(
          _$DeleteCartImpl value, $Res Function(_$DeleteCartImpl) then) =
      __$$DeleteCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DeleteCartImpl>
    implements _$$DeleteCartImplCopyWith<$Res> {
  __$$DeleteCartImplCopyWithImpl(
      _$DeleteCartImpl _value, $Res Function(_$DeleteCartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteCartImpl implements DeleteCart {
  const _$DeleteCartImpl();

  @override
  String toString() {
    return 'CartEvent.deleteCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeleteCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() createCart,
    required TResult Function(String cartId) getCart,
    required TResult Function(String bookId) addBookToCart,
    required TResult Function(String bookId) removeBookFromCart,
    required TResult Function() updateCart,
    required TResult Function(String bookId, int quantity) updateQuantity,
    required TResult Function() deleteCart,
  }) {
    return deleteCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? createCart,
    TResult? Function(String cartId)? getCart,
    TResult? Function(String bookId)? addBookToCart,
    TResult? Function(String bookId)? removeBookFromCart,
    TResult? Function()? updateCart,
    TResult? Function(String bookId, int quantity)? updateQuantity,
    TResult? Function()? deleteCart,
  }) {
    return deleteCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? createCart,
    TResult Function(String cartId)? getCart,
    TResult Function(String bookId)? addBookToCart,
    TResult Function(String bookId)? removeBookFromCart,
    TResult Function()? updateCart,
    TResult Function(String bookId, int quantity)? updateQuantity,
    TResult Function()? deleteCart,
    required TResult orElse(),
  }) {
    if (deleteCart != null) {
      return deleteCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateCart value) createCart,
    required TResult Function(GetCart value) getCart,
    required TResult Function(AddBookToCart value) addBookToCart,
    required TResult Function(RemoveBookFromCart value) removeBookFromCart,
    required TResult Function(UpdateCart value) updateCart,
    required TResult Function(UpdateQuantity value) updateQuantity,
    required TResult Function(DeleteCart value) deleteCart,
  }) {
    return deleteCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateCart value)? createCart,
    TResult? Function(GetCart value)? getCart,
    TResult? Function(AddBookToCart value)? addBookToCart,
    TResult? Function(RemoveBookFromCart value)? removeBookFromCart,
    TResult? Function(UpdateCart value)? updateCart,
    TResult? Function(UpdateQuantity value)? updateQuantity,
    TResult? Function(DeleteCart value)? deleteCart,
  }) {
    return deleteCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateCart value)? createCart,
    TResult Function(GetCart value)? getCart,
    TResult Function(AddBookToCart value)? addBookToCart,
    TResult Function(RemoveBookFromCart value)? removeBookFromCart,
    TResult Function(UpdateCart value)? updateCart,
    TResult Function(UpdateQuantity value)? updateQuantity,
    TResult Function(DeleteCart value)? deleteCart,
    required TResult orElse(),
  }) {
    if (deleteCart != null) {
      return deleteCart(this);
    }
    return orElse();
  }
}

abstract class DeleteCart implements CartEvent {
  const factory DeleteCart() = _$DeleteCartImpl;
}

/// @nodoc
mixin _$CartState {
  CartViewModel? get cart => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<FireStoreFailure> get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {CartViewModel? cart,
      double totalPrice,
      int totalItems,
      bool isLoading,
      Option<FireStoreFailure> failure});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = freezed,
    Object? totalPrice = null,
    Object? totalItems = null,
    Object? isLoading = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartViewModel?,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CartViewModel? cart,
      double totalPrice,
      int totalItems,
      bool isLoading,
      Option<FireStoreFailure> failure});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cart = freezed,
    Object? totalPrice = null,
    Object? totalItems = null,
    Object? isLoading = null,
    Object? failure = null,
  }) {
    return _then(_$CartStateImpl(
      cart: freezed == cart
          ? _value.cart
          : cart // ignore: cast_nullable_to_non_nullable
              as CartViewModel?,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
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

class _$CartStateImpl implements _CartState {
  const _$CartStateImpl(
      {required this.cart,
      required this.totalPrice,
      required this.totalItems,
      required this.isLoading,
      required this.failure});

  @override
  final CartViewModel? cart;
  @override
  final double totalPrice;
  @override
  final int totalItems;
  @override
  final bool isLoading;
  @override
  final Option<FireStoreFailure> failure;

  @override
  String toString() {
    return 'CartState(cart: $cart, totalPrice: $totalPrice, totalItems: $totalItems, isLoading: $isLoading, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            (identical(other.cart, cart) || other.cart == cart) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, cart, totalPrice, totalItems, isLoading, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {required final CartViewModel? cart,
      required final double totalPrice,
      required final int totalItems,
      required final bool isLoading,
      required final Option<FireStoreFailure> failure}) = _$CartStateImpl;

  @override
  CartViewModel? get cart;
  @override
  double get totalPrice;
  @override
  int get totalItems;
  @override
  bool get isLoading;
  @override
  Option<FireStoreFailure> get failure;
  @override
  @JsonKey(ignore: true)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
