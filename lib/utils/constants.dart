//! CLASS CONTAINS ALL APP ICONS AND IMAGES
abstract class AppIconAndImageURLS {
  static const String logo = "lib/assets/icons/logo.svg";
}

//! CLASS ALL BASIC TEXTS USED IN APP
abstract class AppTexts {
  static const String name = "Fertility Friend";
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
