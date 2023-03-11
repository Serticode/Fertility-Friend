// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:fertility_friend/router/router.dart';
import 'package:fertility_friend/router/routes.dart';
import 'package:fertility_friend/screens/blog/blog.dart';
import 'package:fertility_friend/screens/landing_page/landing_page.dart';
import 'package:fertility_friend/theme/app_theme.dart';
import 'package:fertility_friend/utils/app_fade_animation.dart';
import 'package:fertility_friend/utils/app_screen_utils.dart';
import 'package:fertility_friend/utils/constants.dart';
import 'package:fertility_friend/widgets/app_elevated_button.dart';
import 'package:fertility_friend/widgets/spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final int currentPageIndex;
  const CustomAppBar({required this.currentPageIndex, super.key});

  @override
  Size get preferredSize => Size.fromHeight(135.0.h);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        width: double.infinity.w,
        color: Colors.transparent,
        padding: AppScreenUtils.appGeneralPadding,
        child: Row(children: [
          //! LOGO AND NAME
          AppLogoAndName(),

          //! SPACER
          AppSpacer(width: 150.0.w),

          //! MENU ITEMS
          AppBarMenuItem(currentPageIndex: currentPageIndex),

          //! SPACER
          const Spacer(),

          //! BUTTONS
          AppBarButtons()
        ]));
  }
}

//!
//!
//! LOGO & NAME
class AppLogoAndName extends ConsumerWidget {
  const AppLogoAndName({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        width: 200.0.w,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //! SVG ICON LOGO
              Transform.scale(
                  scale: 2.5,
                  child: Container(
                      height: 40.0.h,
                      width: 40.0.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColours.purple71),
                      child: Center(
                          child: Transform.scale(
                              scale: 0.5,
                              child: SvgPicture.asset(
                                  AppIconAndImageURLS.logo))))),

              //! DIVIDER
              VerticalDivider(
                  width: 41.0.w,
                  thickness: 2.0.sp,
                  color: const Color(0xFF666666).withOpacity(0.51)),

              //! NAME
              AppFadeAnimation(
                  delay: 1.4,
                  child: Text(AppTexts.name,
                      style: GoogleFonts.gabriela(
                          color: AppColours.purple71,
                          fontSize: 24.0.sp,
                          fontWeight: FontWeight.w400)))
            ]));
  }
}

//!
//!
//! APP BAR MENU ITEM
class AppBarMenuItem extends ConsumerWidget {
  final int currentPageIndex;
  const AppBarMenuItem({required this.currentPageIndex, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        width: 435.0.w,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: AppBarMenu.listOfMenuItems
                .map((menuItem) => Container(
                    margin: menuItem == AppBarMenu.about
                        ? EdgeInsets.zero
                        : EdgeInsets.only(right: 55.0.w),
                    child: TextButton(
                        onPressed: () {
                          selectedArticleValue.value = null;
                          webPageIndex.value =
                              AppBarMenu.listOfMenuItems.indexOf(menuItem);
                        },
                        child: Text(menuItem,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: currentPageIndex ==
                                            AppBarMenu.listOfMenuItems
                                                .indexOf(menuItem)
                                        ? AppColours.activeAppBarPurple
                                        : AppColours.textBlack80,
                                    fontSize: 26.0.sp,
                                    fontWeight: currentPageIndex ==
                                            AppBarMenu.listOfMenuItems
                                                .indexOf(menuItem)
                                        ? FontWeight.w500
                                        : FontWeight.w400)))))
                .toList()));
  }
}

//!
//!
//! APP BAR BUTTONS
class AppBarButtons extends ConsumerWidget {
  const AppBarButtons({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        width: 255.0.w,
        child: Row(
            children: AppBarMenu.listOfButtonsNames
                .map((buttonName) => Container(
                    margin: buttonName == AppBarMenu.register
                        ? EdgeInsets.only(right: 25.0.w)
                        : EdgeInsets.zero,
                    child: AppElevatedButton(
                        onPressed: () {
                          buttonName == AppBarMenu.register
                              ? AppNavigator.navigateToReplacementPage(
                                  thePageRouteName: AppRoutes.registerPage,
                                  context: context)
                              : AppNavigator.navigateToReplacementPage(
                                  thePageRouteName: AppRoutes.loginPage,
                                  context: context);
                        },
                        buttonName: buttonName,
                        isTransparent: buttonName == AppBarMenu.login,
                        nameColour: buttonName == AppBarMenu.login
                            ? AppColours.buttonBlack
                            : AppColours.white,
                        borderSide:
                            BorderSide(color: AppColours.black, width: 2.sp))))
                .toList()));
  }
}
