import 'package:fitness/features/auth/api/models/register/request/register_request.dart';
import 'package:fitness/features/auth/domain/entity/auth/user_entity.dart';

import '../../../../../core/result/result.dart';

abstract interface  class AuthRemoteDs {
Future<Result<UserEntity>>register(RegisterRequest request);
}