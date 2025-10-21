import 'package:fitness/core/extension/app_localization_extension.dart';
import 'package:fitness/core/responsive/size_helper.dart';
import 'package:fitness/features/auth/presentation/views/widgets/compelete_register/gender_widget.dart';
import 'package:flutter/material.dart';

class SelectGender extends StatelessWidget {
  const SelectGender({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        GenderWidget(
            iconData: Icons.male_rounded, title: context.loc.male,
         ),
        SizedBox(height: context.setHight(8),),
        GenderWidget(iconData: Icons.female, title: context.loc.female,
          ),

      ],
    );
  }
}
