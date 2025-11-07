import 'package:fitness/core/constants/assets_manager.dart';
import 'package:flutter/material.dart';
class SmartCoachProfile extends StatelessWidget {
  const SmartCoachProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return   const CircleAvatar(
      radius: 25,
      backgroundImage:
      AssetImage(AssetsManager.smartCoachProfile),
      backgroundColor: Colors.transparent,
    );
  }
}
