import 'package:fitness/core/result/result.dart';
import 'package:fitness/features/auth/domain/entity/auth/forgetPassEntity/forget_pass_request.dart';
import 'package:fitness/features/auth/domain/entity/auth/forgetPassEntity/forget_pass_response.dart';

abstract interface class AuthRepo {
  Future<Result<ForgetPassResponse>> forgetPass({required 
    ForgetPassRequest forgetPassReq,
  });
}
