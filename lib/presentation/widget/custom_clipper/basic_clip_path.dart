import 'package:flutter/material.dart';

class BasicClipPath extends StatelessWidget {
  const BasicClipPath({super.key, required this.path});

  final CustomClipper<Path>? path;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: path,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        width: 150,
        height: 150,
        color: Colors.blue,
      ),
    );
  }
}
