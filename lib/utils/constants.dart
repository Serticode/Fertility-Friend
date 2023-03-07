//! CLASS CONTAINS ALL APP ICONS AND IMAGES
abstract class AppIconAndImageURLS {
  static const String logo = "lib/assets/icons/logo.svg";
  static const String betty = "lib/assets/images/betty.png";
  static const String ruby = "lib/assets/images/ruby.png";
  static const String conan = "lib/assets/images/conan.png";
  static const String book = "lib/assets/icons/book.svg";
  static const String location = "lib/assets/icons/location.svg";
  static const String lock = "lib/assets/icons/lock.svg";
  static const String pointingWoman = "lib/assets/images/pointing_woman.png";
  static const String periodTracking = "lib/assets/images/period_tracking.svg";
  static const String diagnosis = "lib/assets/images/diagnosis.svg";
  static const String resultsAndDiagnosis =
      "lib/assets/images/result_and_diagnosis.png";

  //! PAGE TWO ICONS
  static const List<String> pageTwoIconURL = [lock, location, book];
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

  //! PAGE TWO TEXTS
  static const String why = "Why";
  static const String fertilityFriend = "Fertility-Friend?";

  static const String confidentiality = "Confidentiality";
  static const String location = "Location";
  static const String education = "Education";

  static const String confidentialityBody =
      "We understand the sensitivity of reproductive health information, and that's why we ensure that your results are only accessible by you. ";
  static const String locationBody =
      "Our diagnostic test will not only give you an accurate diagnosis, but it will also suggest the nearest hospital or care center based on your location.";
  static const String educationBody =
      "Our app provides in-depth information about reproductive illnesses, so you can make informed decisions about your health";

  static const List<String> pageTwoTitles = [
    confidentiality,
    location,
    education
  ];
  static const List<String> pageTwoSubtitles = [
    confidentialityBody,
    locationBody,
    educationBody
  ];

  //! PAGE THREE TEXTS
  static const String resultAndDiagnosis = "Results & Diagnostics";
  static const String resultAndDiagnosisBody =
      "At Fertility-Friend, we understand the importance of accurate and reliable results when it comes to reproductive health. That's why out team conducted extensive research and gathered insights from women currently experiencing reproductive illnesses and also women you have experienced it. \n\nOur diagnostic test uses a sophisticated  knowledge base that connects symptoms to potential illnesses. Simply log in your symptoms and receive a personalized diagnosis based on your unique inputs.";
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
