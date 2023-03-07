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
                  Container(color: Colors.red),

                  //! APP BAR - TOP
                  CustomAppBar(currentPageIndex: currentPageIndex.value)
                ])));
  }
}
