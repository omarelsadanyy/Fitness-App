import 'package:fitness/core/responsive/size_helper.dart';
import 'package:fitness/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/constants/assets_manager.dart';
import '../../../../../../core/constants/constants.dart';
import '../../../../../../core/theme/font_style.dart';
import '../../../../../../core/widget/tab_bar_widget.dart';
import '../../widgets/gridview_widget.dart';

class GymScreen extends StatelessWidget {
  final List<String> images;
  final List<String> titles;
  final List<String> titleTebBar;
  const GymScreen({super.key, required this.images, required this.titles, required this.titleTebBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsManager.backGroundImageGym),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: context.setHight(20)),
              Text(
                Constants.workouts,
                style: getBoldStyle(color: AppColors.white,
                    fontSize: context.setSp(30)
                )
              ),
              SizedBox(height: context.setHight(10)),
              Container(
                height: context.setHight(40),
                margin: EdgeInsets.symmetric(horizontal: context.setWidth(16)),
                child: TabBarWidget(
                  titles: titleTebBar,
                ),
              ),
              SizedBox(height: context.setHight(10)),
              GridviewWidget(
                images: images,
                titles: titles,
              )
            ],
          ),
        ),
      ),
    );
  }
}