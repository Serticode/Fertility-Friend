// ignore_for_file: prefer_const_constructors

import 'package:fertility_friend/screens/landing_page/widget/landing_page_body.dart';
import 'package:fertility_friend/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandingPage extends ConsumerWidget {
  const LandingPage({super.key});

  static final ValueNotifier<int> currentPageIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: currentPageIndex,
            builder: (context, value, child) => Stack(children: [
                  //! BODY - BASE
                  LandingPageBody(),

                  //! APP BAR - TOP
                  CustomAppBar(currentPageIndex: currentPageIndex.value)
                ])));
  }
}
