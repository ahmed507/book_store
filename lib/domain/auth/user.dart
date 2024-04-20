import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends Equatable {
  final String id;
  final String email;
  final String name;
  final String? photoUrl;

  final String? cartId;

  final List<String>? wishlistsIds;

  const UserModel({
    required this.id,
    required this.email,
    required this.name,
    this.photoUrl,
    this.wishlistsIds,
    this.cartId,
  });

  factory UserModel.fromFirebase(User user) {
    return UserModel(
      id: user.uid,
      email: user.email!,
      name: user.displayName!,
      photoUrl: user.photoURL,
      cartId: null,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      name: json['name'],
      photoUrl: json['photo_url'],
      wishlistsIds: json['wishlists_ids'] != null
          ? List<String>.from(json['wishlists_ids'])
          : [],
      cartId: json['cart_id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'photo_url': photoUrl,
      'wishlists_ids': wishlistsIds,
      'cart_id': cartId,
    };
  }

  @override
  List<Object?> get props => [id, email, name, photoUrl, wishlistsIds, cartId];

  UserModel copyWith({
    String? id,
    String? email,
    String? name,
    String? photoUrl,
    List<String>? wishlistsIds,
    String? cartId,
  }) {
    return UserModel(
      id: id ?? this.id,
      email: email ?? this.email,
      name: name ?? this.name,
      photoUrl: photoUrl ?? this.photoUrl,
      wishlistsIds: wishlistsIds ?? this.wishlistsIds,
      cartId: cartId ?? this.cartId,
    );
  }
}
