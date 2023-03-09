import 'package:fertility_friend/screens/landing_page/widget/footer.dart';
import 'package:fertility_friend/screens/landing_page/widget/page_one.dart';
import 'package:fertility_friend/screens/landing_page/widget/results_and_diagnosis.dart';
import 'package:fertility_friend/screens/landing_page/widget/why_fertility_friend.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandingPageBody extends ConsumerWidget {
  const LandingPageBody({super.key});
  static const List<Widget> pages = [
    PageOne(),

    //! FERTILITY FRIEND?
    WhyFertilityFriend(),

    //! RESULTS AND DIAGNOSTICS
    ResultAndDiagnosis(),

    //! FOOTER
    Footer()
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) => ListView(
      physics: const BouncingScrollPhysics(),
      addAutomaticKeepAlives: false,
      children: pages);
}
