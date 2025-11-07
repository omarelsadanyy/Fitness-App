import 'package:equatable/equatable.dart';
import 'package:fitness/features/home/domain/entities/explore_entity/muscles_group_by_id_response_entity/muscles_group_id_entity.dart';
import 'package:fitness/features/home/domain/entities/explore_entity/muscles_group_entity/muscles_group_entity.dart';

class BottomNavigationState extends Equatable{
  final int index;
  final List<MusclesGroupEntity>? muscleGroupsData;
  final Map<String,MusclesGroupIdResponseEntity>? muscleByGroupId;

  const BottomNavigationState({
    required this.index,
    this.muscleGroupsData,
    this.muscleByGroupId,
  });

  BottomNavigationState copyWith({
    int? index,
    List<MusclesGroupEntity>? muscleGroupsData,
    Map<String, MusclesGroupIdResponseEntity>? muscleByGroupId,
  }) {
    return BottomNavigationState(
      index: index ?? this.index,
      muscleGroupsData: muscleGroupsData ?? this.muscleGroupsData,
      muscleByGroupId: muscleByGroupId ?? this.muscleByGroupId,
    );
  }
  
  @override
 
  List<Object?> get props => [
    index,
    muscleGroupsData,
    muscleByGroupId
  ];
}