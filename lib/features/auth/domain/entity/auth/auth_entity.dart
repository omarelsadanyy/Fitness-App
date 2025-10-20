import 'package:fitness/features/auth/domain/entity/auth/user_entity.dart';

class AuthEntity {
  final UserEntity? user;
  final String? token;

  const AuthEntity({
    this.user,
    this.token,
  });
}
