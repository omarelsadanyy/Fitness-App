import 'package:equatable/equatable.dart';
import 'package:fitness/features/auth/domain/entity/auth/body_info_entity.dart';
import 'package:fitness/features/auth/domain/entity/auth/personal_info_entity.dart';

<<<<<<< HEAD
class UserEntity extends Equatable{
=======
class UserEntity extends Equatable {
>>>>>>> origin/auth
  final PersonalInfoEntity? personalInfo;
  final BodyInfoEntity? bodyInfo;
  final String? activityLevel;
  final String? goal;
final String? createdAt;
  const UserEntity({
    this.personalInfo,
    this.bodyInfo,
    this.activityLevel,
    this.goal,this.createdAt
  });

  @override
  List<Object?> get props => [
<<<<<<< HEAD
    personalInfo,bodyInfo,activityLevel,goal,createdAt
=======
    personalInfo,
    bodyInfo,
    activityLevel,
    goal
>>>>>>> origin/auth
  ];
}
