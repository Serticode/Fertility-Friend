//! CLASS CONTAINS ALL APP ICONS AND IMAGES
abstract class AppIconAndImageURLS {
  static const String logo = "lib/assets/icons/logo.svg";
  static const String betty = "lib/assets/images/betty.png";
  static const String ruby = "lib/assets/images/ruby.png";
  static const String conan = "lib/assets/images/conan.png";
  static const String pointingWoman = "lib/assets/images/pointing_woman.png";
  static const String periodTracking = "lib/assets/images/period_tracking.svg";
  static const String diagnosis = "lib/assets/images/diagnosis.svg";
}

//! CLASS ALL BASIC TEXTS USED IN APP
abstract class AppTexts {
  static const String name = "Fertility Friend";

  //! PAGE ONE TEXTS
  static const String ultimateCompanion =
      "The ultimate companion \nfor your reproductive journey";
  static const String takeControl =
      "Take control of your reproductive health, \ntrack your symptoms with ease";
  static const String getStartedNow = "Get started now";
  static const String hundredK = "100k+";
  static const String womenHelped = "Women helped";
  static const String periodTracking = "Period tracking";
  static const String personalizedDiagnosis = "Personalized diagnosis";
}

//! APP BAR MENU
abstract class AppBarMenu {
  //! MENU
  static const String home = "Home";
  static const String blog = "Blog";
  static const String test = "Test";
  static const String about = "About";

  //! BUTTONS TEXT
  static const String register = "Register";
  static const String login = "Log in";

//! LIST OF ALL ITEMS IN APP BAR MENU
  static const List<String> listOfMenuItems = [home, blog, test, about];

  //! LIST OF ALL BUTTONS IN APP BAR
  static const List<String> listOfButtonsNames = [register, login];
}
