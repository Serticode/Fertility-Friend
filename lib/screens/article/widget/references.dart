import 'package:fertility_friend/theme/app_theme.dart';
import 'package:fertility_friend/utils/app_fade_animation.dart';
import 'package:fertility_friend/utils/app_screen_utils.dart';
import 'package:fertility_friend/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class References extends ConsumerWidget {
  final List<String> listOfReferences;
  const References({super.key, required this.listOfReferences});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        padding: AppScreenUtils.containerPadding,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //! TITLE
          Text(AppTexts.references,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 28.0.sp,
                  color: AppColours.textBlack)),

          //! SPACER
          AppScreenUtils.verticalSpaceMedium,

          //! SUB TITLE
          Expanded(
              child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                      children: listOfReferences
                          .map((reference) => AppFadeAnimation(
                              delay:
                                  listOfReferences.indexOf(reference) + 1 * 0.5,
                              child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(vertical: 12.0.h),
                                  child: Text("• $reference}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              fontSize: 24.0.sp,
                                              letterSpacing: 1.2,
                                              height: 1.5,
                                              fontWeight: FontWeight.w400,
                                              color: AppColours.textBlack)))))
                          .toList()))),
        ]));
  }
}
