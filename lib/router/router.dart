import 'package:fertility_friend/router/routes.dart';
import 'package:fertility_friend/screens/landing_page/landing_page.dart';
import 'package:flutter/material.dart';

class AppNavigator {
  //! NAVIGATE TO A PAGE WITHOUT REPLACING THE PREVIOUS PAGE.
  static void navigateToPage(
          {required String thePageRouteName, required BuildContext context}) =>
      Navigator.of(context).pushNamed(thePageRouteName);

  //! NAVIGATE TO A PAGE AND REPLACE THE PREVIOUS PAGE
  static void navigateToReplacementPage(
          {required String thePageRouteName, required BuildContext context}) =>
      Navigator.of(context).pushReplacementNamed(thePageRouteName);

  //! PUSH NEW SCREEN AND REMOVE ALL SCREENS
  static void navigateToAndRemoveAllPreviousScreens(
          {required String thePageRouteName, required BuildContext context}) =>
      Navigator.of(context)
          .pushNamedAndRemoveUntil(thePageRouteName, (route) => false);

  //! ROUTE GENERATOR
  static Route<dynamic> generateRoute({required RouteSettings routeSettings}) {
    switch (routeSettings.name) {
      //! SECURITY SET UP
      case AppRoutes.landingPage:
        return _getPageRoute(
            routeName: routeSettings.name,
            args: routeSettings.arguments,
            view: const LandingPage());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                body: Center(
                    child:
                        Text('No route defined for ${routeSettings.name}'))));
    }
  }
}

//! GET A PAGE ROUTE
PageRoute _getPageRoute({String? routeName, Widget? view, Object? args}) =>
    MaterialPageRoute(
        settings: RouteSettings(name: routeName, arguments: args),
        builder: (_) => view!);
