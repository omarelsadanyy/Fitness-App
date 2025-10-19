import 'package:fitness/features/auth/domain/entity/auth/body_info_entity.dart';
import 'package:fitness/features/auth/domain/entity/auth/personal_info_entity.dart';

class UserEntity {
  final PersonalInfoEntity? personalInfo;
  final BodyInfoEntity? bodyInfo;
  final String? activityLevel;
  final String? goal;

  const UserEntity({
    this.personalInfo,
    this.bodyInfo,
    this.activityLevel,
    this.goal,
  });
}
