import 'package:fertility_friend/theme/app_theme.dart';
import 'package:fertility_friend/utils/app_screen_utils.dart';
import 'package:fertility_friend/utils/constants.dart';
import 'package:fertility_friend/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageOne extends ConsumerWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(children: [
      //! BASE COLORING
      Row(children: [
        //! WHITE SIDE - //! NOTICE AND BUTTON
        Expanded(
            child: Container(
                height: MediaQuery.of(context).size.height,
                color: AppColours.white,
                padding: AppScreenUtils.appGeneralPadding,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //! TITLE
                      Text(AppTexts.ultimateCompanion,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontSize: 65.0.sp, color: AppColours.black)),

                      //! SPACER
                      AppScreenUtils.verticalSpaceLarge,

                      //! SUB TITLE
                      Text(AppTexts.ultimateCompanion,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  fontSize: 32.0.sp,
                                  fontWeight: FontWeight.w400,
                                  color: AppColours.textBlack80)),

                      //! SPACER
                      AppScreenUtils.verticalSpaceLarge,

                      //! BUTTON
                      AppElevatedButton(
                          onPressed: () {},
                          buttonName: AppTexts.getStartedNow,
                          width: 182.0.w,
                          isTransparent: false)
                    ]))),

        //! PURPLE SIDE
        Container(
            width: 611.0.w,
            height: MediaQuery.of(context).size.height,
            color: AppColours.purple26)
      ]),

      //! POINTING WOMAN
      Positioned(
          top: MediaQuery.of(context).size.height * 0.14,
          right: 234.0.w,
          child: SizedBox(
              width: 515.w,
              height: MediaQuery.of(context).size.height * 0.95,
              child: Image.asset(AppIconAndImageURLS.pointingWoman,
                  fit: BoxFit.fitHeight, filterQuality: FilterQuality.high))),

      //! PERIOD TRACKING
      Positioned(
          right: 220.0.w,
          top: MediaQuery.of(context).size.height * 0.25,
          child: Container(
              width: 180.0.w,
              height: 85.0.h,
              padding: AppScreenUtils.containerPaddingTiny,
              decoration: BoxDecoration(
                  color: AppColours.white,
                  borderRadius: BorderRadius.circular(42.0.r)),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Container(
                    width: 54.0.w,
                    height: 54.0.h,
                    padding: AppScreenUtils.containerPaddingTiny,
                    decoration: const BoxDecoration(
                        color: AppColours.lightPurple, shape: BoxShape.circle),
                    child: SvgPicture.asset(AppIconAndImageURLS.periodTracking,
                        fit: BoxFit.contain)),

                //! NOTICE
                Text(AppTexts.periodTracking,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppColours.deepPurple,
                        fontSize: 24.0.sp,
                        fontWeight: FontWeight.w500)),
              ]))),

      //! PERSONALIZED DIAGNOSIS
      Positioned(
          right: 138.0.w,
          top: MediaQuery.of(context).size.height * 0.75,
          child: Container(
              width: 240.0.w,
              height: 85.0.h,
              padding: AppScreenUtils.containerPaddingTiny,
              decoration: BoxDecoration(
                  color: AppColours.white,
                  borderRadius: BorderRadius.circular(42.0.r)),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Container(
                    width: 54.0.w,
                    height: 54.0.h,
                    padding: AppScreenUtils.containerPaddingTiny,
                    decoration: const BoxDecoration(
                        color: AppColours.lightPurple, shape: BoxShape.circle),
                    child: SvgPicture.asset(AppIconAndImageURLS.diagnosis,
                        fit: BoxFit.contain)),

                //! NOTICE
                Text(AppTexts.personalizedDiagnosis,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: AppColours.deepPurple,
                        fontSize: 24.0.sp,
                        fontWeight: FontWeight.w500)),
              ]))),

      //! 100K WOMEN - BASE
      Positioned(
          right: 492.0.w,
          top: MediaQuery.of(context).size.height * 0.85,
          child: Container(
              width: 220.0.w,
              height: 85.0.h,
              padding:
                  EdgeInsets.symmetric(vertical: 12.0.h, horizontal: 16.0.w),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    const Color(0xFF808080).withOpacity(0.36),
                    const Color(0xFF808080).withOpacity(0),
                    const Color(0xFFFFFFFF).withOpacity(0.4)
                  ]),
                  borderRadius: BorderRadius.circular(42.0.r)),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Stack(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Image.asset(AppIconAndImageURLS.ruby)),
                      Align(
                          alignment: Alignment.center,
                          child: Image.asset(AppIconAndImageURLS.betty)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Image.asset(AppIconAndImageURLS.conan))
                    ])),

                    //! SPACER
                    AppScreenUtils.horizontalSpaceSmall,

                    //! NOTICE
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(AppTexts.hundredK,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: AppColours.deepPurple,
                                      fontSize: 24.0.sp,
                                      fontWeight: FontWeight.w500)),
                          Text(AppTexts.womenHelped,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                      color: AppColours.buttonBlack,
                                      fontSize: 21.0.sp,
                                      fontWeight: FontWeight.w300))
                        ])
                  ])))
    ]);
  }
}
