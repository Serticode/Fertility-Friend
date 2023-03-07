import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppScreenUtils {
  //! PADDING
  static EdgeInsets appGeneralPadding =
      EdgeInsets.symmetric(vertical: 24.0.h, horizontal: 80.0.w);
  static const EdgeInsets headerPadding =
      EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0);
  static const EdgeInsets headerButtonPadding =
      EdgeInsets.symmetric(vertical: 21.0, horizontal: 24.0);
  static const EdgeInsets listOfVaccinesPadding =
      EdgeInsets.symmetric(vertical: 16.0, horizontal: 21.0);
  static const EdgeInsets dashboardNavPadding =
      EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0);
  static EdgeInsets containerPadding =
      EdgeInsets.symmetric(vertical: 32.0.h, horizontal: 18.0.w);
  static EdgeInsets containerPaddingSmall =
      EdgeInsets.symmetric(vertical: 18.0.h, horizontal: 16.0.w);

  static EdgeInsets containerPaddingTiny =
      EdgeInsets.symmetric(vertical: 12.0.h, horizontal: 8.0.w);

  //! PADDING - BUTTONS
  static EdgeInsets textButtonPadding =
      EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 6.0.w);
  static EdgeInsets elevatedButtonDefaultPadding =
      EdgeInsets.symmetric(vertical: 32.h, horizontal: 34.0.w);

  //! PADDING - TEXT FORM FIELDS
  static const EdgeInsets textFormFieldDefaultPadding =
      EdgeInsets.symmetric(vertical: 18.0, horizontal: 32.0);

  //! CHAT PADDING
  //! CHAT PADDING
  static final EdgeInsets appChatPadding =
      EdgeInsets.symmetric(vertical: 6.0.h, horizontal: 8.0.w);

  //! CHAT PADDING
  static final EdgeInsets notificationChatPadding =
      EdgeInsets.symmetric(vertical: 16.0.h, horizontal: 14.0.w);

  //! IS MOBILE
  static bool isMobile({bool? isMobile}) =>
      isMobile != null && isMobile == true;

  //! SPACERS
  static Widget horizontalSpaceSmall = SizedBox(width: 10.0.w);
  static Widget horizontalSpaceMedium = SizedBox(width: 25.0.w);
  static Widget horizontalSpaceLarge = SizedBox(width: 75.0.w);

  static Widget verticalSpaceSmall = SizedBox(height: 10.0.h);
  static Widget verticalSpaceMedium = SizedBox(height: 25.0.h);
  static Widget verticalSpaceLarge = SizedBox(height: 70.0.h);

  //! GET TODAYS DATE
  static String getTodaysDate() {
    String todaysDate = "";

    //! GET THE DATE / TIME
    final DateTime dateTime = DateTime.now();
    String theMonth = getMonth(dateTime: dateTime);
    String theDay = getDay(dateTime: dateTime);

    todaysDate = "$theDay ${dateTime.day} $theMonth, ${dateTime.year}";

    return todaysDate;
  }

  //! FETCH MONTH NAME
  static String getMonth({required DateTime dateTime}) {
    String theMonth = "";
    switch (dateTime.month) {
      case 1:
        theMonth = "January";
        return theMonth;
      case 2:
        theMonth = "February";
        return theMonth;
      case 3:
        theMonth = "March";
        return theMonth;
      case 4:
        theMonth = "April";
        return theMonth;
      case 5:
        theMonth = "May";
        return theMonth;
      case 6:
        theMonth = "June";
        return theMonth;
      case 7:
        theMonth = "July";
        return theMonth;
      case 8:
        theMonth = "August";
        return theMonth;
      case 9:
        theMonth = "September";
        return theMonth;
      case 10:
        theMonth = "October";
        return theMonth;
      case 11:
        theMonth = "November";
        return theMonth;
      case 12:
        theMonth = "December";
        return theMonth;

      //! DEFAULT VALUES
      default:
        theMonth = "Could not fetch the month";
        return theMonth;
    }
  }

  static String getDay({required DateTime dateTime}) {
    String theDay = "";
    switch (dateTime.month) {
      case 1:
        theDay = "Monday";
        return theDay;
      case 2:
        theDay = "Tuesday";
        return theDay;
      case 3:
        theDay = "Wednesday";
        return theDay;
      case 4:
        theDay = "Thursday";
        return theDay;
      case 5:
        theDay = "Friday";
        return theDay;
      case 6:
        theDay = "Saturday";
        return theDay;
      case 7:
        theDay = "Sunday";
        return theDay;

      //! DEFAULT VALUES
      default:
        theDay = "Could not fetch the month";
        return theDay;
    }
  }

  //! SHOW GENERAL DIALOGUE
  /* static showAppDialogBox(
          {required BuildContext theBuildContext,
          required Widget child,
          required double width,
          bool? isBGTransparent,
          required double height}) =>
      showGeneralDialog(

          //!SHADOW EFFECT
          barrierColor: isBGTransparent != null
              ? AppColours.appWhiteBGColour.withOpacity(0.2)
              : AppColours.appBlueTransparent.withOpacity(0.05),

          //! OTHER NEEDED PARAMETERS
          barrierDismissible: false,
          barrierLabel: "LABEL",
          context: theBuildContext,

          //! USE PROVIDED ANIMATION
          transitionBuilder: (context, a1, a2, widget) => Dialog(
              elevation: 12.0,
              backgroundColor: isBGTransparent != null
                  ? AppColours.appWhiteBGColour.withOpacity(0.2)
                  : AppColours.appWhiteBGColour,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.r)),
              child: SizedBox(
                  height: height * a1.value,
                  width: width * a1.value,
                  child: Padding(
                    padding: containerPadding,
                    child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(), child: child),
                  ))),

          //! ANIMATION DURATION
          transitionDuration: const Duration(milliseconds: 200),

          //! STILL DON'T KNOW WHAT THIS DOES, BUT IT'S REQUIRED
          pageBuilder: (context, animation1, animation2) => const Text("")); */
}
