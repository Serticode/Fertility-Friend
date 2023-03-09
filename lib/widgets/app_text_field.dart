import 'package:fertility_friend/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends ConsumerWidget {
  final String hint;
  final InputBorder? enabledBorder;
  final Icon? suffixIcon;
  const AppTextFormField(
      {super.key, required this.hint, this.enabledBorder, this.suffixIcon});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextFormField(
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontSize: 24.0.sp,
            fontWeight: FontWeight.w500,
            color: AppColours.textBlack),
        decoration: InputDecoration(
            hintText: hint,
            suffixIcon: suffixIcon,
            contentPadding:
                EdgeInsets.symmetric(vertical: 6.0.h, horizontal: 12.0.w),
            hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 26.0.sp,
                fontWeight: FontWeight.w300,
                color: AppColours.textBlack80),
            enabledBorder: enabledBorder ??
                OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8.0.r)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: AppColours.textBlack.withOpacity(0.9)),
                borderRadius: BorderRadius.circular(8.0.r)),
            filled: true,
            fillColor: AppColours.white));
  }
}
