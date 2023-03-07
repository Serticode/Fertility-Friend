// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:fertility_friend/theme/app_theme.dart';
import 'package:fertility_friend/utils/app_screen_utils.dart';
import 'package:fertility_friend/utils/constants.dart';
import 'package:fertility_friend/widgets/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends ConsumerWidget {
  final int currentPageIndex;
  const CustomAppBar({required this.currentPageIndex, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        height: 120.0.h,
        width: double.infinity.w,
        color: Colors.white,
        padding: AppScreenUtils.appGeneralPadding,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          //! LOGO AND NAME
          AppLogoAndName(),

          //! MENU ITEMS
          AppBarMenuItem(currentPageIndex: currentPageIndex),

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
                  scale: 2.0,
                  child: Container(
                      height: 40.0.h,
                      width: 40.0.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: AppColours.purple71),
                      child: Center(
                          child: Transform.scale(
                              scale: 0.4,
                              child: SvgPicture.asset(
                                  AppIconAndImageURLS.logo))))),

              //! DIVIDER
              VerticalDivider(
                  width: 41.0.w,
                  thickness: 2.0.sp,
                  color: const Color(0xFF666666).withOpacity(0.51)),

              //! NAME
              Text(AppTexts.name,
                  style: GoogleFonts.gabriela(
                      color: AppColours.purple71,
                      fontSize: 21.0.sp,
                      fontWeight: FontWeight.w400))
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
                .map((menuItem) => TextButton(
                    onPressed: () {},
                    child: Text(menuItem,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: currentPageIndex ==
                                    AppBarMenu.listOfMenuItems.indexOf(menuItem)
                                ? AppColours.activeAppBarPurple
                                : AppColours.textBlack80,
                            fontWeight: currentPageIndex ==
                                    AppBarMenu.listOfMenuItems.indexOf(menuItem)
                                ? FontWeight.w500
                                : FontWeight.w400))))
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
                        onPressed: () {},
                        buttonName: buttonName,
                        isTransparent: buttonName == AppBarMenu.login,
                        borderSide:
                            BorderSide(color: AppColours.black, width: 2.sp))))
                .toList()));
  }
}
