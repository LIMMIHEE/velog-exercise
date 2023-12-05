import 'package:flutter/material.dart';

class ConstColumn extends StatelessWidget {
  const ConstColumn({super.key, required this.title, required this.children});

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        ...children,
        const Divider(),
      ],
    );
  }
}
