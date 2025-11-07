import 'package:fitness/core/constants/json_serializable_constants.dart';

import 'package:json_annotation/json_annotation.dart';
part 'change_pass_response.g.dart';

@JsonSerializable()
class ChangePassResponse {
  @JsonKey(name: JsonSerializableConstants.message)
  final String? message;
  @JsonKey(name: JsonSerializableConstants.token)
  final String? token;
  ChangePassResponse({this.message, this.token});

  factory ChangePassResponse.fromJson(Map<String, dynamic> json) =>
      _$ChangePassResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ChangePassResponseToJson(this);


   
}
