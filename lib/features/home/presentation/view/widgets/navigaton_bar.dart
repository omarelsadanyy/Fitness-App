import 'package:fitness/core/constants/assets_manager.dart';
import 'package:fitness/core/extension/app_localization_extension.dart';
import 'package:fitness/core/theme/app_colors.dart';
import 'package:fitness/features/home/presentation/view/widgets/nav_item.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int index) onTap;

  const CustomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.gray[AppColors.colorCode90],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavItem(
            icon: AssetsManager.homeSvg,
            label: context.loc.explore,
            isSelected: currentIndex == 0,
            onTap: () => onTap(0),
          ),
          NavItem(
            icon: AssetsManager.chatSvg,
            label: context.loc.chatAi,
            isSelected: currentIndex == 1,
            onTap: () => onTap(1),
          ),
          NavItem(
            icon: AssetsManager.gymSvg,
            label: context.loc.gym,
            isSelected: currentIndex == 2,
            onTap: () => onTap(2),
          ),
          NavItem(
            icon: AssetsManager.profileSvg,
            label: context.loc.profile,
            isSelected: currentIndex == 3,
            onTap: () => onTap(3),
          ),
        ],
      ),
    );
  }
}
