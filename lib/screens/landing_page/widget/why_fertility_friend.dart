import 'package:fertility_friend/theme/app_theme.dart';
import 'package:fertility_friend/utils/app_fade_animation.dart';
import 'package:fertility_friend/utils/app_screen_utils.dart';
import 'package:fertility_friend/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WhyFertilityFriend extends ConsumerWidget {
  const WhyFertilityFriend({super.key});

  static const List<Color> pageIconColours = [
    Color(0xFFC9FDE6),
    Color(0xFFFFD0A0),
    Color(0xFFFFD0EB)
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        height: 1080.0.h,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: AppColours.teal),
        padding: AppScreenUtils.appGeneralPadding,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //! NOTICE
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "${AppTexts.why} ",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 50.0.sp, color: AppColours.textGrey),
                  children: [
                    TextSpan(
                        text: AppTexts.fertilityFriend,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontSize: 50.0.sp, color: AppColours.deepPurple))
                  ])),

          //! SPACER
          AppScreenUtils.verticalSpaceLarge,

          //! CONTENT
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: AppTexts.pageTwoTitles
                  .map((title) => AppFadeAnimation(
                      delay: (AppTexts.pageTwoTitles.indexOf(title) + 1) * 2.5,
                      child: WhyFertilityFriendPostWidget(
                          title: title,
                          subtitle: AppTexts.pageTwoSubtitles
                              .elementAt(AppTexts.pageTwoTitles.indexOf(title)),
                          iconURL: AppIconAndImageURLS.pageTwoIconURL
                              .elementAt(AppTexts.pageTwoTitles.indexOf(title)),
                          iconBGColour: pageIconColours.elementAt(
                              AppTexts.pageTwoTitles.indexOf(title)))))
                  .toList())
        ]));
  }
}

//!
//! CONTAINER / WIDGET
class WhyFertilityFriendPostWidget extends ConsumerWidget {
  final String title;
  final String subtitle;
  final String iconURL;
  final Color iconBGColour;
  const WhyFertilityFriendPostWidget(
      {required this.title,
      required this.subtitle,
      required this.iconURL,
      required this.iconBGColour,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        height: 650.0.h,
        width: 400.0.w,
        margin: EdgeInsets.symmetric(horizontal: 12.0.w),
        padding: AppScreenUtils.containerPadding,
        decoration: BoxDecoration(
            color: AppColours.white,
            borderRadius: BorderRadius.circular(3.0.r)),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //! ICON
              Container(
                  height: 120.0.h,
                  width: 70.0.w,
                  padding: AppScreenUtils.containerPaddingTiny,
                  decoration: BoxDecoration(
                      color: iconBGColour,
                      borderRadius: BorderRadius.circular(5.0.r)),
                  child: Transform.scale(
                      scale: 0.4, child: SvgPicture.asset(iconURL))),

              //! SPACER
              AppScreenUtils.verticalSpaceLarge,

              //! TITLE
              Text(title,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 36.0.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColours.textBlack)),

              //! SPACER
              AppScreenUtils.verticalSpaceLarge,

              //! SUBTITLE
              Text(subtitle,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 24.0.sp,
                      fontWeight: FontWeight.w500,
                      height: 2.8.sp,
                      color: AppColours.textGrey.withOpacity(0.70)))
            ]));
  }
}
