import 'package:fertility_friend/router/router.dart';
import 'package:fertility_friend/router/routes.dart';
import 'package:fertility_friend/theme/app_theme.dart';
import 'package:fertility_friend/utils/app_fade_animation.dart';
import 'package:fertility_friend/utils/app_screen_utils.dart';
import 'package:fertility_friend/utils/constants.dart';
import 'package:fertility_friend/widgets/app_elevated_button.dart';
import 'package:fertility_friend/widgets/app_text_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      //! LOGIN PAGE
      Expanded(
          child: Container(
              padding: AppScreenUtils.appGeneralPadding,
              child: Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //! CANCEL BUTTON
                        Align(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                                onTap: () =>
                                    AppNavigator.navigateToReplacementPage(
                                        thePageRouteName: AppRoutes.landingPage,
                                        context: context),
                                child: Transform.scale(
                                    scale: 0.8,
                                    child: SvgPicture.asset(
                                        AppIconAndImageURLS.authClose)))),

                        //! SPACER
                        AppScreenUtils.verticalSpaceLarge,
                        //! SPACER
                        AppScreenUtils.verticalSpaceLarge,

                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 42.0.w),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //! BODY - TITLE
                                  AppFadeAnimation(
                                      delay: 2.6,
                                      child: Text(AppTexts.welcomeBack,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                  fontSize: 40.0.sp,
                                                  color: AppColours.black))),

                                  //! SPACER
                                  AppScreenUtils.verticalSpaceMedium,

                                  //! SUB TITLE
                                  AppFadeAnimation(
                                      delay: 2.8,
                                      child: Text(AppTexts.tooLong,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  fontSize: 24.0.sp,
                                                  fontWeight: FontWeight.w300,
                                                  color:
                                                      AppColours.blogTabGrey))),

                                  //! SPACER
                                  AppScreenUtils.verticalSpaceLarge,

                                  //! LOG IN WITH GOOGLE
                                  SizedBox(
                                      height: 90.0.h,
                                      width: double.infinity,
                                      child: AppElevatedButton(
                                          buttonName: AppTexts.login,
                                          isTransparent: false,
                                          bgColour: Colors.white,
                                          borderSide: const BorderSide(
                                              color: AppColours
                                                  .activeAppBarPurple),
                                          child: Transform.scale(
                                              scale: 0.8,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    //! ICON
                                                    SvgPicture.asset(
                                                        AppIconAndImageURLS
                                                            .google),

                                                    //! SPACER
                                                    AppScreenUtils
                                                        .horizontalSpaceSmall,

                                                    Text(AppTexts.loginGoogle,
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyMedium!
                                                            .copyWith(
                                                                fontSize:
                                                                    24.0.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                                color: AppColours
                                                                    .textBlack))
                                                  ])),
                                          onPressed: () {})),

                                  //! SPACER
                                  AppScreenUtils.verticalSpaceLarge,

                                  //! DIVIDER
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 21.0.w),
                                      child: Row(children: [
                                        Expanded(
                                            child: Divider(
                                                height: 3.0.h,
                                                thickness: 2.0.sp,
                                                color: AppColours.textBlack
                                                    .withOpacity(0.6))),

                                        //! SPACER
                                        AppScreenUtils.horizontalSpaceMedium,

                                        Text("or",
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium!
                                                .copyWith(
                                                    fontSize: 24.0.sp,
                                                    color: AppColours.black)),

                                        //! SPACER
                                        AppScreenUtils.horizontalSpaceMedium,

                                        Expanded(
                                            child: Divider(
                                                height: 3.0.h,
                                                thickness: 2.0.sp,
                                                color: AppColours.textBlack
                                                    .withOpacity(0.6)))
                                      ])),

                                  //! SPACER
                                  AppScreenUtils.verticalSpaceLarge,

                                  //! EMAIL
                                  AppFadeAnimation(
                                      delay: 2.6,
                                      child: Text(AppTexts.emailAddress,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  fontSize: 24.0.sp,
                                                  color: AppColours.black))),

                                  //! SPACER
                                  AppScreenUtils.verticalSpaceMedium,

                                  //! EMAIL
                                  AppTextFormField(
                                      hint: "",
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColours.textBlack
                                                  .withOpacity(0.9)),
                                          borderRadius:
                                              BorderRadius.circular(8.0.r))),

                                  //! SPACER
                                  AppScreenUtils.verticalSpaceLarge,

                                  //! PASSWORD
                                  AppFadeAnimation(
                                      delay: 2.6,
                                      child: Text(AppTexts.password,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  fontSize: 24.0.sp,
                                                  color: AppColours.black))),

                                  //! SPACER
                                  AppScreenUtils.verticalSpaceMedium,

                                  //! PASSWORD
                                  AppTextFormField(
                                      hint: "",
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: AppColours.textBlack
                                                  .withOpacity(0.9)),
                                          borderRadius:
                                              BorderRadius.circular(8.0.r))),

                                  //! SPACER
                                  AppScreenUtils.verticalSpaceMedium,

                                  //! FORGOT PASSWORD
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: AppFadeAnimation(
                                          delay: 2.6,
                                          child: Text(AppTexts.forgotPassword,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium!
                                                  .copyWith(
                                                      fontSize: 24.0.sp,
                                                      color: AppColours
                                                          .activeAppBarPurple)))),

                                  //! SPACER
                                  AppScreenUtils.verticalSpaceLarge,

                                  //! LOGIN BUTTON
                                  SizedBox(
                                      height: 90.0.h,
                                      width: double.infinity,
                                      child: AppElevatedButton(
                                          buttonName: AppTexts.login,
                                          isTransparent: false,
                                          onPressed: () {})),

                                  //! SPACER
                                  AppScreenUtils.verticalSpaceLarge,

                                  //! SUB TITLE
                                  Center(
                                      child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                              text: "${AppTexts.noAccount}  ",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      fontSize: 24.0.sp,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color:
                                                          AppColours.textGrey),
                                              children: [
                                                TextSpan(
                                                    text: AppTexts.register,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium!
                                                        .copyWith(
                                                            fontSize: 24.0.sp,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color: AppColours
                                                                .activeAppBarPurple),
                                                    recognizer: TapGestureRecognizer()
                                                      ..onTap = () => AppNavigator
                                                          .navigateToReplacementPage(
                                                              thePageRouteName:
                                                                  AppRoutes
                                                                      .registerPage,
                                                              context: context))
                                              ])))
                                ]))
                      ])))),

      //! RIGHT SIDE - IMAGE
      Expanded(
          child: Image.asset(AppIconAndImageURLS.authPage, fit: BoxFit.cover))
    ]));
  }
}
