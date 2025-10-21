import 'package:fitness/core/extension/app_localization_extension.dart';
import 'package:fitness/core/responsive/size_helper.dart';
import 'package:fitness/features/auth/presentation/views/screens/compelete_register/tabs/select_gender.dart';
import 'package:fitness/features/auth/presentation/views/widgets/compelete_register/container_detials_complete_register.dart';
import 'package:fitness/features/auth/presentation/views/widgets/compelete_register/custom_loading_circle_progress_indictor.dart';
import 'package:fitness/features/auth/presentation/views/widgets/compelete_register/custom_pop_icon.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../../core/widget/logo.dart';
import '../../../../api/models/register/text_model.dart';

class PageViewCompeleteRegister extends StatelessWidget {
  const PageViewCompeleteRegister({super.key,required this.index});

final int index;
  @override
  Widget build(BuildContext context) {
     final List<TextModel>texts=[
   TextModel(title: context.loc.tellUsAboutYourself,
       subTitle: context.loc.weNeedToKnowYourGender),
       TextModel(title: context.loc.howOldAreYou,
           subTitle: context.loc.thisHelpsUsCreateYourPersonalizedPlan),
       TextModel(title: context.loc.whatIsYourWeight,
           subTitle: context.loc.thisHelpsUsCreateYourPersonalizedPlan),
       TextModel(title: context.loc.whatIsYourHeight,
           subTitle: context.loc.thisHelpsUsCreateYourPersonalizedPlan),
       TextModel(title: context.loc.whatIsYourGoal,
           subTitle: context.loc.thisHelpsUsCreateYourPersonalizedPlan),
       TextModel(title: context.loc.howOldAreYou,
           subTitle: ""),




     ];
     final List<Widget>tabs=[
       const SelectGender()
     ];
    return Column(
      children: [
Padding(padding: EdgeInsetsDirectional.symmetric(
  horizontal: context.setWidth(20)
),child:
Row(
  spacing: 130,
  children: [
    index==1?const SizedBox.shrink():const CustomPopIcon(),

    const Logo()
  ],
),),
       SizedBox(
         height: context.setHight(100),
       ),
        CustomLoadingCircleProgressIndictor(index: index),
        SizedBox(
          height: context.setHight(30),
        ),

      ContainerDetialsCompleteRegister(
            child: tabs[index],

        ),
      ],
    );
  }
}
