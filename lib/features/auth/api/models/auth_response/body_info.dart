import 'package:fitness/core/constants/json_serializable_constants.dart';
import 'package:json_annotation/json_annotation.dart';

part 'body_info.g.dart';

@JsonSerializable()
class BodyInfo {
  @JsonKey(name: JsonSerializableConstants.weight)
  final int? weight;

  @JsonKey(name: JsonSerializableConstants.height)
  final int? height;

  const BodyInfo({this.weight, this.height});

  factory BodyInfo.fromJson(Map<String, dynamic> json) =>
      _$BodyInfoFromJson(json);

  Map<String, dynamic> toJson() => _$BodyInfoToJson(this);
}
