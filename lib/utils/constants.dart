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

  static const String endo = "lib/assets/images/endo.png";
  static const String pcos = "lib/assets/images/pcos.png";
  static const String fibroid = "lib/assets/images/fibriods.png";
  static const String cancer = "lib/assets/images/cervicalCancer.png";
  static const String cyst = "lib/assets/images/cist.png";
  static const String pid = "lib/assets/images/pid.png";

  //! BLOG ARTICLE IMAGE LIST
  static const List<String> articleImages = [
    endo,
    pcos,
    fibroid,
    cancer,
    cyst,
    pid
  ];

  //! AUTH PAGE
  static const String authPage = "lib/assets/images/authpages.png";
  static const String authClose = "lib/assets/icons/auth_close.svg";
  static const String google = "lib/assets/icons/google.svg";
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
  static const String fertilityFriendNoHyphen = "Fertility Friend";

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

//! FOOTER
  static const String copyRight =
      "Copyright © Fertilityfriend. All rights reserved.";

  static const String designedBy = "Designed by Mfonabasi.";
  static const String developedBy = "Developed by Serticode.";
  static const String reproductiveHealthCompanion =
      "Reproductive health companion";
  static const String email = "hello@fertilityfriend.com";
  static const String phoneNumber = "+234 903 7362 896";

  static const String company = "Company";
  static const String legal = "Legal";
  static const String support = "Support";

  static const List<String> links = [company, legal, support];
  static const List<String> companyList = [
    "About us",
    "Careers",
    "Partners",
  ];
  static const List<String> legalList = [
    "Terms & Conditions",
    "Privacy policy",
  ];
  static const List<String> supportList = [
    "FAQS",
    "Contact",
  ];

  static const String subscribeToOurNewsLetter = "Subscribe to our news letter";
  static const String subscribe = "Subscribe";

  //! BLOG
  static const String ultimateReproductiveCompanion =
      "The ultimate reproductive companion";
  static const String ourBlogFeatures =
      "Our blog features reproductive illnesses and possible issues with the reproductive system";

  //! ARTICLE TITLES
  static const String endo = "Endometriosis: More than just a period pain";
  static const String pcos = "PCOS: Is it just irregular cycles?";
  static const String fibroid = "Fibroids: Understanding the condition";
  static const String cancer = "Cervical cancer: The fight against it";
  static const String cyst = "Ovarian cysts: Don’t ignore the warning signs";
  static const String pid = "PID: Protecting your reproductive health";
  static const String article = "ARTICLE";
  static const String readArticle = "Read article";

  static const List<String> articleTitles = [
    endo,
    pcos,
    fibroid,
    cancer,
    cyst,
    pid
  ];

  static const String references = "References";
  static const String meaning = "Meaning";
  static const String stages = "Stages";
  static const String causes = "Causes";
  static const String symptoms = "Symptoms";
  static const String diagnosis = "Diagnosis";
  static const String treatment = "Treatment";
  static const String date = "7 February 2023 ";

  static const List<String> articleTrackerTitle = [
    meaning,
    stages,
    causes,
    symptoms,
    diagnosis,
    treatment
  ];

  //! LIST OF REFERENCES

  static List allReferences = [
    endometriosisReferences,
    pcosReferences,
    fibroidReferences,
    cervicalCancerReferences,
    ovarianCistReferences,
    pidReferences
  ];

//! LIST OF REFERENCES FOR EACH PAGE
  static List<String> endometriosisReferences = [
    "“Endometriosis - Symptoms and causes      Mayo Clinic.” https://www.mayoclinic.  org/diseases-conditions/endometriosis/symptoms-causes/syc-20354656(accessed Nov. 06, 2022)",
    "P. Parasar, P. Ozcan, and K.L.Terry, “Endometriosis: Epidemiology, Diagnosis    and Clinical Management,” Curr. Obstet.Gynecol. Rep., vol. 6, no. 1, pp. 34–41, Mar. 2017, doi: 10.1007/S13669-017-0187-1.",
    "“Stages of Endometriosis.” https://www. verywellhealth.com/stages-of-endometriosis-4692244 (accessed Nov. 13, 2022)",
    "M. A. Pino, “The pharmacologic management of endometriosis,” U.S. Pharm., vol. 42, no. 9, pp. 12–16, 2017."
  ];

  static List<String> pcosReferences = [
    "“Endometriosis - Symptoms and causes      Mayo Clinic.” https://www.mayoclinic.  org/diseases-conditions/endometriosis/symptoms-causes/syc-20354656(accessed Nov. 06, 2022)",
    "P. Parasar, P. Ozcan, and K.L.Terry, “Endometriosis: Epidemiology, Diagnosis    and Clinical Management,” Curr. Obstet.Gynecol. Rep., vol. 6, no. 1, pp. 34–41, Mar. 2017, doi: 10.1007/S13669-017-0187-1.",
    "“Stages of Endometriosis.” https://www. verywellhealth.com/stages-of-endometriosis-4692244 (accessed Nov. 13, 2022)",
    "M. A. Pino, “The pharmacologic management of endometriosis,” U.S. Pharm., vol. 42, no. 9, pp. 12–16, 2017."
  ];

  static List<String> fibroidReferences = [
    "“Endometriosis - Symptoms and causes      Mayo Clinic.” https://www.mayoclinic.  org/diseases-conditions/endometriosis/symptoms-causes/syc-20354656(accessed Nov. 06, 2022)",
    "P. Parasar, P. Ozcan, and K.L.Terry, “Endometriosis: Epidemiology, Diagnosis    and Clinical Management,” Curr. Obstet.Gynecol. Rep., vol. 6, no. 1, pp. 34–41, Mar. 2017, doi: 10.1007/S13669-017-0187-1.",
    "“Stages of Endometriosis.” https://www. verywellhealth.com/stages-of-endometriosis-4692244 (accessed Nov. 13, 2022)",
    "M. A. Pino, “The pharmacologic management of endometriosis,” U.S. Pharm., vol. 42, no. 9, pp. 12–16, 2017."
  ];

  static List<String> cervicalCancerReferences = [
    "“Endometriosis - Symptoms and causes      Mayo Clinic.” https://www.mayoclinic.  org/diseases-conditions/endometriosis/symptoms-causes/syc-20354656(accessed Nov. 06, 2022)",
    "P. Parasar, P. Ozcan, and K.L.Terry, “Endometriosis: Epidemiology, Diagnosis    and Clinical Management,” Curr. Obstet.Gynecol. Rep., vol. 6, no. 1, pp. 34–41, Mar. 2017, doi: 10.1007/S13669-017-0187-1.",
    "“Stages of Endometriosis.” https://www. verywellhealth.com/stages-of-endometriosis-4692244 (accessed Nov. 13, 2022)",
    "M. A. Pino, “The pharmacologic management of endometriosis,” U.S. Pharm., vol. 42, no. 9, pp. 12–16, 2017."
  ];

  static List<String> ovarianCistReferences = [
    "“Endometriosis - Symptoms and causes      Mayo Clinic.” https://www.mayoclinic.  org/diseases-conditions/endometriosis/symptoms-causes/syc-20354656(accessed Nov. 06, 2022)",
    "P. Parasar, P. Ozcan, and K.L.Terry, “Endometriosis: Epidemiology, Diagnosis    and Clinical Management,” Curr. Obstet.Gynecol. Rep., vol. 6, no. 1, pp. 34–41, Mar. 2017, doi: 10.1007/S13669-017-0187-1.",
    "“Stages of Endometriosis.” https://www. verywellhealth.com/stages-of-endometriosis-4692244 (accessed Nov. 13, 2022)",
    "M. A. Pino, “The pharmacologic management of endometriosis,” U.S. Pharm., vol. 42, no. 9, pp. 12–16, 2017."
  ];

  static List<String> pidReferences = [
    "“Endometriosis - Symptoms and causes      Mayo Clinic.” https://www.mayoclinic.  org/diseases-conditions/endometriosis/symptoms-causes/syc-20354656(accessed Nov. 06, 2022)",
    "P. Parasar, P. Ozcan, and K.L.Terry, “Endometriosis: Epidemiology, Diagnosis    and Clinical Management,” Curr. Obstet.Gynecol. Rep., vol. 6, no. 1, pp. 34–41, Mar. 2017, doi: 10.1007/S13669-017-0187-1.",
    "“Stages of Endometriosis.” https://www. verywellhealth.com/stages-of-endometriosis-4692244 (accessed Nov. 13, 2022)",
    "M. A. Pino, “The pharmacologic management of endometriosis,” U.S. Pharm., vol. 42, no. 9, pp. 12–16, 2017."
  ];

  //! LOGIN
  static const String welcomeBack = "Welcome back 👋";
  static const String tooLong = "It's been too long. Let's catch up!";
  static const String emailAddress = "Email address";
  static const String password = "Password";
  static const String forgotPassword = "Forgot password?";
  static const String noAccount = "Don’t have an account?";
  static const String login = "Log in";
  static const String loginGoogle = "Log in with Google";
  static const String register = "Register";

  //! REGISTER
  static const String getStarted = "Get started!";
  static const String takeControlToday =
      "Take control of your reproductive health today";
  static const String registerGoogle = "Register with Google";
  static const String confirmPassword = "Confirm Password";
  static const String alreadyHaveAnAccount = "Already have an account?";
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
