import 'package:equatable/equatable.dart';

class AppUserEntity extends Equatable {
  final String id;
  final String username;
  final String email;

  const AppUserEntity({
    required this.id,
    required this.username,
    required this.email,
  });

  @override
  List<Object?> get props => [id];
}
