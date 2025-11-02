import 'package:equatable/equatable.dart';
import 'package:fitness/core/enum/request_state.dart';
import 'package:fitness/features/home/domain/entities/explore_entity/meals_categories_entity/meals_categories_entity.dart';
import 'package:fitness/features/home/domain/entities/explore_entity/muscles_group_by_id_entity/muscles_group_id_entity.dart';
import 'package:fitness/features/home/domain/entities/explore_entity/muscles_group_entity/muscles_group_entity.dart';
import 'package:fitness/features/home/domain/entities/explore_entity/muscles_random_entity/muscles_random_entity.dart';

class ExploreState extends Equatable {
  final StateStatus<List<MusclesRandomEntity>> randomMusclesState;
  final StateStatus<List<MusclesGroupEntity>> musclesGroupState;
  final StateStatus<List<MealsCategoriesEntity>> mealsCategorysState;
   final StateStatus<MusclesGroupIdEntity> musclesGroupById;

  const ExploreState({
    this.randomMusclesState = const StateStatus.initial(),
    this.musclesGroupState = const StateStatus.initial(),
    this.mealsCategorysState = const StateStatus.initial(),
    this.musclesGroupById =const StateStatus.initial()});

  ExploreState copyWith({
    final StateStatus<List<MusclesRandomEntity>>? randomMusclesState,
    final StateStatus<List<MusclesGroupEntity>>? musclesGroupState,
    final StateStatus<List<MealsCategoriesEntity>>? mealsCategorysState,
    final  StateStatus<MusclesGroupIdEntity>? musclesGroupById,
  }) {
    return ExploreState(
      randomMusclesState: randomMusclesState ?? this.randomMusclesState,
      musclesGroupState: musclesGroupState ?? this.musclesGroupState,
      mealsCategorysState: mealsCategorysState ?? this.mealsCategorysState,
      musclesGroupById:  musclesGroupById ?? this.musclesGroupById
    );
  }

  @override
  List<Object?> get props => [
    randomMusclesState,
    musclesGroupState,
    mealsCategorysState,
    musclesGroupById
  ];
}
