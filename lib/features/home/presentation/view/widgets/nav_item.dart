import 'package:fitness/core/responsive/size_helper.dart';
import 'package:fitness/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavItem extends StatelessWidget {
  final String icon;
  final String label;
  final bool isSelected;
  final Function() onTap;

  const NavItem({
    super.key,
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            icon,
            height: context.setHight(26),
            color: isSelected
                ? AppColors.orange[AppColors.baseColor]!
                : AppColors.white,
          ),
          if (isSelected) SizedBox(height: context.setHight(4)),
          if (isSelected)
            Text(
              label,
              style: TextStyle(
                fontSize: context.setSp(12),
                color: AppColors.orange[AppColors.baseColor],
              ),
            ),
        ],
      ),
    );
  }
}
