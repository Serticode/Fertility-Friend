import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CervicalCancerArticle extends ConsumerWidget {
  const CervicalCancerArticle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(color: Colors.cyan);
  }
}

class PcosPage extends ConsumerWidget {
  const PcosPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(color: Colors.amber);
  }
}

class Fibroid extends ConsumerWidget {
  const Fibroid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(color: Colors.blue);
  }
}

class OvarianCist extends ConsumerWidget {
  const OvarianCist({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(color: Colors.purple);
  }
}

class PIDPage extends ConsumerWidget {
  const PIDPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(color: Colors.deepPurple);
  }
}
