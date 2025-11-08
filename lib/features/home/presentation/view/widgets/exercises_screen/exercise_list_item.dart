import 'package:fitness/core/constants/app_widgets_key.dart';
import 'package:fitness/core/extension/app_localization_extension.dart';
import 'package:fitness/core/responsive/size_helper.dart';
import 'package:fitness/core/routes/app_routes.dart';
import 'package:fitness/core/theme/app_colors.dart';
import 'package:fitness/core/theme/font_manager.dart';
import 'package:fitness/core/theme/font_style.dart';
import 'package:fitness/features/home/presentation/view_model/exercises_view_model/exercises_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExerciseListItem extends StatelessWidget {
  final String primeMoverMuscleImage;
  final String exerciseName;
  final String? videoLink;

  const ExerciseListItem({
    required this.primeMoverMuscleImage,
    required this.exerciseName,
    required this.videoLink,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ExercisesCubit>();
    final thumbnail = cubit.getYoutubeThumbnail(videoLink ?? "");
    return InkWell(
      key: const Key(WidgetKey.exerciseListItemTapKey),
      onTap: videoLink == ""
          ? null
          : () {
              Navigator.pushNamed(
                context,
                AppRoutes.exeVideoScreen,
                arguments: videoLink,
              );
            },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(context.setWidth(30)),
            child: Image.network(
              key: const Key(WidgetKey.exerciseImageKey),
              thumbnail ?? primeMoverMuscleImage,
              height: context.setHight(88),
              width: context.setWidth(81),
              fit: BoxFit.fill,
              errorBuilder: (context, error, stackTrace) =>
                 Image.network(primeMoverMuscleImage,
                   height: context.setHight(88),
                   width: context.setWidth(81),),
            ),
          ),
          SizedBox(width: context.setWidth(10)),
          SizedBox(
            width: context.setWidth(180),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  key: const Key(WidgetKey.exerciseNameKey),
                  exerciseName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: getMediumStyle(
                    color: AppColors.white,
                    fontSize: context.setSp(FontSize.s18),
                  ),
                ),
                Text(
                  key: const Key(WidgetKey.exerciseGroupLabelKey),
                  context.loc.exerciseGroup,
                  style: getRegularStyle(
                    color: AppColors.white,
                    fontSize: context.setSp(FontSize.s14),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          thumbnail != null
              ? Container(
                  key: const Key(WidgetKey.playIconContainerKey),
                  width: context.setWidth(24),
                  height: context.setWidth(24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(context.setWidth(25)),
                    color: AppColors.orange,
                  ),
                  child: Icon(
                    key: const Key(WidgetKey.playIconKey),
                    Icons.play_arrow,
                    size: context.setWidth(20),
                    color: AppColors.gray[90],
                  ),
                )
              : const SizedBox(),
          SizedBox(width: context.setWidth(10)),
        ],
      ),
    );
  }
}
