import 'package:fitness/core/extension/app_localization_extension.dart';
import 'package:fitness/core/widget/app_background.dart';
import 'package:fitness/core/widget/blur_container.dart';
import 'package:fitness/core/widget/logo.dart';
import 'package:fitness/features/auth/presentation/views/widgets/forget_pass/text_section.dart';
import 'package:fitness/features/home/presentation/view/widgets/change_pass/change_pass_section.dart';
import 'package:flutter/material.dart';
class ChangePassScreen extends StatelessWidget {
  const ChangePassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Logo(),
              const Spacer(),
              TextSection(
                text1: context.loc.makeSure8Char,
                text2: context.loc.createNewPass,
              ),
               const BlurContainer(blurChild:  ChangePassSection()),
              const Spacer(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  
  
  }
}