import 'package:fertility_friend/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LandingPage extends ConsumerWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Stack(children: [
      //! BODY - BASE
      Container(
        color: Colors.red,
      ),

      //! APP BAR - TOP
      const CustomAppBar()
    ]));
  }
}
