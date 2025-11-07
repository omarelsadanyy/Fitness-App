// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fitness/features/home/domain/entities/explore_entity/muscles_group_by_id_response_entity/muscles_group_id_entity.dart';
import 'package:fitness/features/home/domain/entities/explore_entity/muscles_group_entity/muscles_group_entity.dart';

sealed class BottomNavigationIntents {}
class GoToTabWithData extends BottomNavigationIntents{
  int index;
  List<MusclesGroupEntity>? muscleGroupsData;
  Map<String,MusclesGroupIdResponseEntity>? muscleByGroupId;
  GoToTabWithData({required this.index,required this.muscleGroupsData,required this.muscleByGroupId});
}

class GoToTab extends BottomNavigationIntents {
  int index;
  GoToTab({
    required this.index,
  });
}
