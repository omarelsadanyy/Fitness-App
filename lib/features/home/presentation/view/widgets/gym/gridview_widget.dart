import 'package:fitness/core/responsive/size_helper.dart';
import 'package:fitness/core/routes/app_routes.dart';
import 'package:fitness/features/home/domain/entities/explore_entity/muscle_entity/muscle_entity.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widget/custom_card_fitness.dart';

class GridviewWidget extends StatelessWidget {
  final List<MuscleEntity> randomMusclesData;

  const GridviewWidget({
    super.key,
    required this.randomMusclesData
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: context.setWidth(16),
        vertical: context.setHight(5),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.9,
      ),
      itemCount:  randomMusclesData.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
             Navigator.pushNamed(context, AppRoutes.exercises,
      arguments:randomMusclesData[index]);
          },
          child: CustomCardFitness(
            image: randomMusclesData[index].image ??'',
            title: randomMusclesData[index].name ?? '',
          ),
        );
      },
    );
  }
}
