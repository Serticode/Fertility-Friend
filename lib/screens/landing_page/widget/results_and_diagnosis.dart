import 'package:fertility_friend/theme/app_theme.dart';
import 'package:fertility_friend/utils/app_fade_animation.dart';
import 'package:fertility_friend/utils/app_screen_utils.dart';
import 'package:fertility_friend/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResultAndDiagnosis extends ConsumerWidget {
  const ResultAndDiagnosis({super.key});

  static const List<Color> pageIconColours = [
    Color(0xFFC9FDE6),
    Color(0xFFFFD0A0),
    Color(0xFFFFD0EB)
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        height: 1080.0.h,
        decoration: const BoxDecoration(color: AppColours.pink),
        padding: AppScreenUtils.appGeneralPadding,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //! NOTICE
          Text(AppTexts.resultAndDiagnosis,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontSize: 60.0.sp, color: AppColours.deepPurple)),

          //! SPACER
          AppScreenUtils.verticalSpaceLarge,
          //! SPACER
          AppScreenUtils.verticalSpaceLarge,
          //! SPACER
          AppScreenUtils.verticalSpaceLarge,

          //! CONTENT
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //! IMAGE
            Transform.scale(
                scale: 1.4,
                child: SizedBox(
                  width: 470.0.w,
                  height: 533.0.h,
                  child: Image.asset(AppIconAndImageURLS.resultsAndDiagnosis),
                )),

            //! SPACER
            AppScreenUtils.horizontalSpaceMedium,

            //! TEXT
            Flexible(
                child: Text(AppTexts.resultAndDiagnosisBody,
                    textAlign: TextAlign.justify,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 24.0.sp,
                        fontWeight: FontWeight.w500,
                        height: 4.0.sp,
                        color: AppColours.textGrey.withOpacity(0.70))))
          ])
        ]));
  }
}
