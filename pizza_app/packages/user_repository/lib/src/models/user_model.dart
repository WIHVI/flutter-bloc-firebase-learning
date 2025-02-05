import 'package:equatable/equatable.dart';

import '../entities/user_entity.dart';

class UserModel extends Equatable {
  final String userId;
  final String email;
  final String name;
  final bool hasActiveCart;

  const UserModel({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });

  static const empty = UserModel(
    userId: '',
    email: '',
    name: '',
    hasActiveCart: false,
  );

  UserModel copyWith({
    String? userId,
    String? email,
    String? name,
    bool? hasActiveCart,
  }) {
    return UserModel(
      userId: userId ?? this.userId,
      email: email ?? this.email,
      name: name ?? this.name,
      hasActiveCart: hasActiveCart ?? this.hasActiveCart,
    );
  }

  UserEntity toEntity() {
    return UserEntity(
      userId: userId,
      email: email,
      name: name,
      hasActiveCart: hasActiveCart,
    );
  }

  static UserModel fromEntity(UserEntity entity) {
    return UserModel(
      userId: entity.userId,
      email: entity.email,
      name: entity.name,
      hasActiveCart: entity.hasActiveCart,
    );
  }

  @override
  String toString() {
    return 'UserModel: $email, $name, $hasActiveCart';
  }

  @override
  List<Object?> get props => [userId, email, name, hasActiveCart];
}
