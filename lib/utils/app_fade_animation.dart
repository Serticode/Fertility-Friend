//! HERE IS THE FADE ANIMATION USED THROUGHOUT THE APPLICATION
//! IT'S CUSTOM TWEAKED TO MEET MY REQUIREMENTS / NEEDS.
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class AppFadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;
  final double? translateY;
  final double? translateX;
  const AppFadeAnimation(
      {super.key,
      required this.delay,
      required this.child,
      this.translateY,
      this.translateX});

  @override
  Widget build(BuildContext context) {
    //! ANIMATION TWEEN DEFINITION
    final MovieTween animationTween = MovieTween()
      //! MOVE VERTICALLY
      ..scene(
              begin: const Duration(milliseconds: 0),
              duration: Duration(milliseconds: (150 * delay).round()))
          .tween("translateY", Tween(begin: translateY ?? 75.0, end: 0.0))

      //! OPACITY TRACK
      ..scene(
              begin: const Duration(milliseconds: 0),
              end: Duration(milliseconds: (150 * delay).round()))
          .tween("opacity", Tween(begin: 0.0, end: 1.0));

    return PlayAnimationBuilder<Movie>(
        tween: animationTween,
        duration: Duration(milliseconds: (150 * delay).round()),
        child: child,
        builder: (context, value, child) => Opacity(
            opacity: value.get("opacity"),
            child: Transform.translate(
                offset: Offset(0.0, value.get("translateY")), child: child)));
  }
}
