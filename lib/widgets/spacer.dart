//! APP SPACER
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppSpacer extends ConsumerWidget {
  final double? width;
  final double? height;
  const AppSpacer({
    super.key,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) =>
      width == null && height == null
          ? const SizedBox.shrink()
          : SizedBox(width: width, height: height);
}
