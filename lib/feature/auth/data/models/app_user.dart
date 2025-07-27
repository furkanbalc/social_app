import 'package:social_app/feature/auth/domain/entities/app_user_entity.dart';

class AppUser extends AppUserEntity {
  const AppUser({
    required super.id,
    required super.username,
    required super.email,
  });

  AppUserEntity convertToEntity() {
    return AppUserEntity(
      id: id,
      username: username,
      email: email,
    );
  }

  /// convert app user to json
  Map<String, dynamic> toJson() => {
        'id': id,
        'username': username,
        'email': email,
      };

  /// convert json to app user
  factory AppUser.fromJson(Map<String, dynamic> json) => AppUser(
        id: json['id'],
        username: json['username'],
        email: json['email'],
      );
}
