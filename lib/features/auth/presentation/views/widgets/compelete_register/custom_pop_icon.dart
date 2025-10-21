import 'package:fitness/core/responsive/size_helper.dart';
import 'package:fitness/core/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/constants/assets_manager.dart';

class CustomPopIcon extends StatelessWidget {
  const CustomPopIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return
    InkWell(
      onTap: (){
        Navigator.of(context).pop();
      },
      child:   Container(
        width: context.setWidth(24),
        height: context.setHight(24),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.orange[AppColors.baseColor]
        ),
        child: ImageIcon(const AssetImage(AssetsManeger.popIcon),
          size: context.setMinSize(24),
          color: AppColors.white,),
      ),
    );
  }
}
