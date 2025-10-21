import 'package:fitness/features/auth/api/models/register/request/user_body_info.dart';
import 'package:fitness/features/auth/api/models/register/request/user_info.dart';
import 'package:json_annotation/json_annotation.dart';


part 'register_request.g.dart';

@JsonSerializable()
class RegisterRequest {
final UserInfo? userInfo;

  final UserBodyInfo? userBodyInfo;

  RegisterRequest ({
    this.userInfo,
    this.userBodyInfo
  });

  factory RegisterRequest.fromJson(Map<String, dynamic> json) {
    return _$RegisterRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$RegisterRequestToJson(this);
  }
}


