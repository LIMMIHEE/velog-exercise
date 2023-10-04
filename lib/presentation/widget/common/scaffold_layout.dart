import 'package:flutter/material.dart';

class ScaffoldLayout extends StatelessWidget {
  const ScaffoldLayout({
    super.key,
    this.title = '',
    required this.child,
  });

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title.isNotEmpty
          ? AppBar(
              title: Text(title),
            )
          : null,
      body: child,
    );
  }
}
