import 'package:fertility_friend/utils/app_screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get theTheme => ThemeData(
      //! HOW PAGES TRANSITION BETWEEN EACH OTHER
      //! ASSIGN ALL PLATFORMS TO TRANSITION USING THE ZOOM PAGE TRANSITION
      pageTransitionsTheme: PageTransitionsTheme(builders: {
        for (final platform in TargetPlatform.values)
          platform: const ZoomPageTransitionsBuilder()
      }),
      scaffoldBackgroundColor: AppColours.scaffoldBackgroundColour,
      shadowColor: AppColours.shadowColour,

      //! ICONS
      iconTheme: IconThemeData(size: 21.0.sp, color: AppColours.iconColour),

      //! TEXT
      textTheme: TextTheme(
          displayLarge: GoogleFonts.poppins(
              fontSize: 40.0.sp,
              fontWeight: FontWeight.w800,
              height: 1.6.h,
              color: AppColours.header1TextColour),
          displayMedium: GoogleFonts.poppins(
              fontSize: 18.0.sp,
              fontWeight: FontWeight.w400,
              height: 1.8.sp,
              color: AppColours.header2TextColour),
          bodyLarge: GoogleFonts.poppins(
              fontSize: 21.0.sp,
              fontWeight: FontWeight.w500,
              height: 2.0.sp,
              color: AppColours.bodyText1TextColour),
          bodyMedium: GoogleFonts.poppins(
              fontSize: 16.0.sp,
              fontWeight: FontWeight.w400,
              height: 2.2.sp,
              color: AppColours.bodyText2TextColour)),

      //! ELEVATED BUTTON
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              padding: AppScreenUtils.elevatedButtonDefaultPadding,
              backgroundColor: AppColours.elevatedButtonBackgroundColour,
              textStyle: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  color: AppColours.elevatedButtonTextColour,
                  fontSize: 18.0.sp),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0.r)))),
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(
              primary: AppColours.primaryColour,
              secondary: AppColours.secondaryColour,
              tertiary: AppColours.tertiaryColour,
              shadow: AppColours.shadowColour)
          .copyWith(background: AppColours.backgroundColour));
}

//! THEME COLOURS.
abstract class AppColours {
  //! MAIN COLOUR
  static const Color primaryColour = Color(0xFF1C4DA1);
  static const Color secondaryColour = Color(0xFF68BF50);
  static const Color tertiaryColour = Color(0xFFD40909);

  //! BASE COLOURS
  static const Color white = Color(0xFFFFFFFF);
  static const Color textBlack = Color(0xFF262626);

  //! TEXT COLOURS
  static Color textBlack80 = const Color(0xFF262626).withOpacity(0.8);
  static const Color textGrey = Color(0xFF6D6D6D);

  //! BUTTON COLOURS
  static const Color buttonBlack = Color(0xFF161718);

  static const Color deepPurple = Color(0xFF521D7A);
  static Color purple71 = const Color(0xFF8F3CCF).withOpacity(0.71);
  static Color purple26 = const Color(0xFF8F3CCF).withOpacity(0.26);
  static const Color activeAppBarPurple = Color(0xFF8F3CCF);
  static const Color lightPurpleBG = Color(0xFFF3EBFA);

  static const Color appGreen = Color(0xFF68BF50);
  static const Color appRed = Color(0xFFD40909);
  static final Color appAmber = Colors.amber.shade800;
  static const Color appWhiteBGColour = Color(0xFFFFFFFF);
  static const Color appGreyBGColour = Color(0xFFE5E5E5);
  static const Color textFormFieldBGColour = Color(0xFFF2F2F2);
  static const Color textFormFieldUnfocusedBorderColour = Color(0xFFBDBDBD);

  //! BASE COLOURS WITH TRANSPARENCY
  static const Color appBlueTransparent = Color(0xFFC8DCFF);
  static const Color appGreenTransparent = Color(0xFFCBFFBC);
  static const Color appRedTransparent = Color(0xFFFFAEAE);

  //! BUTTON COLOURS
  static const Color inActiveButton = Color(0xFFBDBDBD);
  static const Color activeButtonBlue = Color(0xFF1C4DA1);
  static const Color activeButtonGreen = Color(0xFF68BF50);

  //! BUTTON COLOURS - BACKGROUND

  //! ICON COLOURS
  static const Color iconColour = Color(0xFF1C4DA1);
  static const Color iconBGColour = Color(0xFF5C6266);
  static const Color hoverColour = Color(0Xffb6542b);

  //! BACKGROUND COLOURS
  static Color backgroundColour = Colors.white;
  static Color scaffoldBackgroundColour = Colors.white;
  static Color backgroundColourGrey = Colors.grey.shade100;

  //! SHADOW COLOUR
  static Color shadowColour = const Color(0xFF1C4DA1).withOpacity(0.2);

  //! TEXT COLOURS
  static const Color header1TextColour = Color(0xFF333333);
  static const Color header2TextColour = Color(0xFF828282);
  static const Color bodyText1TextColour = Color(0xFF4F4F4F);
  static const Color bodyText2TextColour = Color(0xFF828282);
  static const Color textFormFieldLabelColour = Color(0xFF4F4F4F);
  static const Color elevatedButtonTextColour = Color(0XffFFFFFF);
  static Color lettersAndIconsFaintColour = const Color(0xFF565759);
  static Color focusedTextFormFieldColour = const Color(0xFFFEA742);
  static const Color black = Color(0xFF333333);

  //! ELEVATED BUTTON AND CONTAINERS
  static Color elevatedButtonBackgroundColour = const Color(0xFFBDBDBD);
  static Color containersBackgroundColourPrimary = Colors.white;
  static Color containersBackgroundColourSecondary = const Color(0xFF273EBD);
}
