import 'package:fitness/core/constants/json_serializable_constants.dart';
import 'package:fitness/features/auth/api/models/auth_response/user_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class AuthResponse {
  @JsonKey(name: JsonSerializableConstants.message)
  final String? message;
  @JsonKey(name: JsonSerializableConstants.user)
  final UserResponse? user;
  @JsonKey(name: JsonSerializableConstants.token)
  final String? token;

  AuthResponse({this.message, this.user, this.token});

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return _$AuthResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AuthResponseToJson(this);
  }
}
