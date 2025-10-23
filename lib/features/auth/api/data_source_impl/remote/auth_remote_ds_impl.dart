import 'package:fitness/core/result/result.dart';
import 'package:fitness/core/safe_api_call/safe_api_call.dart';
import 'package:fitness/features/auth/api/client/auth_api_services.dart';
import 'package:fitness/features/auth/api/models/forget_pass_models/forget_pass_request_model.dart';
import 'package:fitness/features/auth/data/data_source/remote/auth_remote_ds.dart';
import 'package:fitness/features/auth/domain/entity/auth/forgetPassEntity/forget_pass_request.dart';
import 'package:fitness/features/auth/domain/entity/auth/forgetPassEntity/forget_pass_response.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRemoteDs)
class AuthRemoteDsImpl implements AuthRemoteDs {
  final AuthApiServices _authApiServices;
  AuthRemoteDsImpl(this._authApiServices);

  @override
  Future<Result<ForgetPassResponse>> forgetPass({
    required ForgetPassRequest forgetPassReq,
  })async {

   
    return safeApiCall(() async {
      final forgetPassResponseModel = await _authApiServices.forgetPassword(
        ForgetPassRequestModel.toModel(forgetPassReq),
      );
      return (forgetPassResponseModel.toEntity());
    });
  }
}
