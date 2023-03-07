import 'package:fertility_friend/utils/app_screen_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends ConsumerWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 300.0.h,
      width: double.infinity.w,
      color: Colors.white,
      padding: AppScreenUtils.appGeneralPadding,
    );
  }
}
