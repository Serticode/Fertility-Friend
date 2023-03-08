// ignore_for_file: prefer_const_constructors

import 'package:fertility_friend/screens/blog/blog.dart';
import 'package:fertility_friend/screens/landing_page/widget/landing_page_body.dart';
import 'package:fertility_friend/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//! WEB PAGE INDEX
final ValueNotifier<int> webPageIndex = ValueNotifier(0);

class LandingPage extends ConsumerWidget {
  const LandingPage({super.key});
  static const List<Widget> pages = [LandingPageBody(), BlogPage()];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: //! APP BAR - TOP
            PreferredSize(
                preferredSize: Size.fromHeight(135.0.h),
                child: ValueListenableBuilder(
                    valueListenable: webPageIndex,
                    builder: (context, value, child) =>
                        CustomAppBar(currentPageIndex: webPageIndex.value))),

        //! PAGES
        body: ValueListenableBuilder(
            valueListenable: webPageIndex,
            builder: (context, value, child) =>
                pages.elementAt(webPageIndex.value)));
  }
}
