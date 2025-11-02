import 'package:equatable/equatable.dart';
import 'package:fitness/features/home/domain/entities/explore_entity/muscles_group_by_id_entity/muscle_entity.dart';
import 'package:fitness/features/home/domain/entities/explore_entity/muscles_group_entity/muscles_group_entity.dart';

class MusclesGroupIdEntity extends Equatable {
  final String? message;
  final MusclesGroupEntity? musclesGroup;
  final List<MuscleEntity>? muscles;

  const MusclesGroupIdEntity({
    this.message,
    this.musclesGroup,
    this.muscles,
  });

  @override
  List<Object?> get props => [message, musclesGroup, muscles];
}