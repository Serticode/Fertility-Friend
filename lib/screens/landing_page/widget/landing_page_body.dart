import 'package:fertility_friend/screens/landing_page/widget/page_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandingPageBody extends ConsumerWidget {
  const LandingPageBody({super.key});
  static final ValueNotifier<PageController> _controller =
      ValueNotifier(PageController(initialPage: 0));
  static final ValueNotifier<int> currentPage = ValueNotifier(0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ValueListenableBuilder(
        valueListenable: _controller,
        builder: (context, value, child) => PageView(
            scrollDirection: Axis.vertical,
            pageSnapping: false,
            physics: const BouncingScrollPhysics(),
            controller: _controller.value,
            children: const [PageOne()]));
  }
}

//!
//!
//! PAGE TWO - WHY FERTILITY FRIEND
class WhyFertilityFriend extends ConsumerWidget {
  const WhyFertilityFriend({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}

//!
//!
//! PAGE THREE - RESULTS & DIAGNOSTICS
class ResultsAndDiagnostics extends ConsumerWidget {
  const ResultsAndDiagnostics({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container();
  }
}
