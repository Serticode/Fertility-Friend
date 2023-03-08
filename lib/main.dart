import 'dart:ui';
import 'package:fertility_friend/router/router.dart';
import 'package:fertility_friend/screens/landing_page/landing_page.dart';
import 'package:fertility_friend/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  //! INITIALIZE WIDGETS BINDING
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const ProviderScope(child: FertilityFriend()));
}

//! FERTILITY FRIEND ... HERE LIES THE ADMIN SECTION.
class FertilityFriend extends StatelessWidget {
  const FertilityFriend({super.key});

  @override
  Widget build(BuildContext context) => ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,

      //! 375 BY 812 - THAT'S THE LAYOUT GIVEN ON THE DESIGN BOARD
      designSize: const Size(1440, 1440),

      //! MAIN APP
      builder: (context, child) => MaterialApp(
          title: "Fertility Friend",
          theme: AppTheme.theTheme,
          debugShowCheckedModeBanner: false,

          //! SCROLL BEHAVIOR CLASS, ACCEPTING DIFFERENT SCROLL DEVICES;
          scrollBehavior: const MaterialScrollBehavior()
              .copyWith(scrollbars: false, dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown
          }),

          //! ROUTER / ROUTE GENERATOR
          onGenerateRoute: (settings) =>
              AppNavigator.generateRoute(routeSettings: settings),

          //! INITIALIZE A SCREEN UTIL WIDGET TO AID RESPONSIVENESS.
          home: const LandingPage()));
}
