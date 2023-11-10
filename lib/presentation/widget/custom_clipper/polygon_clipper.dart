import 'package:flutter/material.dart';

class PolygonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(75, 100); // 시작점 세팅
    path.lineTo(150, 50);
    path.lineTo(100, 0);
    path.lineTo(50, 0);
    path.lineTo(0, 50);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
