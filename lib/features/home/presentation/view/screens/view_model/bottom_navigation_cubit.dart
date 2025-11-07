import 'package:fitness/features/home/domain/entities/explore_entity/muscles_group_by_id_response_entity/muscles_group_id_entity.dart';
import 'package:fitness/features/home/domain/entities/explore_entity/muscles_group_entity/muscles_group_entity.dart';
import 'package:fitness/features/home/presentation/view/screens/view_model/bottom_navigation_intents.dart';
import 'package:fitness/features/home/presentation/view/screens/view_model/bottom_navigation_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
@injectable
class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() :super(const BottomNavigationState(index: 0));
 
 void doIntent(BottomNavigationIntents intent){
  switch(intent){

    case GoToTabWithData():
      _changeTabWithData(
        index: intent.index,
        muscleGroupsData: intent.muscleGroupsData,
        muscleByGroupId: intent.muscleByGroupId
      );
      break;

    case GoToTab():
    _changeTab(index: intent.index);
    break;
  }
 }

  void _changeTabWithData(
      {required int index,List<MusclesGroupEntity>? muscleGroupsData,
      Map<String, MusclesGroupIdResponseEntity>? muscleByGroupId}) {
    emit(state.copyWith(
      index: index,
      muscleGroupsData: muscleGroupsData ??state.muscleGroupsData,
      muscleByGroupId: muscleByGroupId ?? state.muscleByGroupId 
    ));
  }

  void _changeTab(
      {required int index}) {
    emit(state.copyWith(
      index: index,
    ));
  }
}