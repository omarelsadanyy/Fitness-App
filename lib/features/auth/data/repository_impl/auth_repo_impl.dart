import 'package:fitness/core/result/result.dart';
import 'package:fitness/features/auth/data/data_source/local/auth_local_ds.dart';
import 'package:fitness/features/auth/data/data_source/remote/auth_remote_ds.dart';
import 'package:fitness/features/auth/domain/entity/auth/forgetPassEntity/forget_pass_request.dart';
import 'package:fitness/features/auth/domain/entity/auth/forgetPassEntity/forget_pass_response.dart';
import 'package:fitness/features/auth/domain/repository/auth_repo.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AuthRepo)
class AuthRepoImpl implements AuthRepo{
  final AuthRemoteDs _authRemoteDs;
  final AuthLocalDs _authLocalDs;

  AuthRepoImpl(
      this._authRemoteDs,
      this._authLocalDs
      );

  @override
  Future<Result<ForgetPassResponse>> forgetPass({required ForgetPassRequest forgetPassReq})async {
  return await _authRemoteDs.forgetPass(forgetPassReq: forgetPassReq);
   
  }
}