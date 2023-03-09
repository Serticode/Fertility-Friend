import 'package:fertility_friend/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppElevatedButton extends ConsumerWidget {
  final double? width;
  final bool? isTransparent;
  final String buttonName;
  final Color? bgColour;
  final Color? nameColour;
  final Widget? child;
  final BorderSide? borderSide;
  final void Function() onPressed;
  const AppElevatedButton(
      {required this.buttonName,
      required this.isTransparent,
      required this.onPressed,
      this.width,
      this.child,
      this.bgColour,
      this.nameColour,
      this.borderSide,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        width: width ?? 115.0.w,
        height: 85.0.h,
        child: ElevatedButton(
            onPressed: () => onPressed(),
            style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                backgroundColor: isTransparent != null && isTransparent == true
                    ? Colors.transparent
                    : bgColour ?? AppColours.buttonBlack,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0.r),
                    side: borderSide ?? BorderSide.none)),
            child: child ??
                Text(buttonName,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 24.0.sp,
                        fontWeight: FontWeight.w500,
                        color: nameColour ?? AppColours.white))));
  }
}
