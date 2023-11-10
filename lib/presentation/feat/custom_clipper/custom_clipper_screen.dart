import 'package:flutter/material.dart';
import 'package:velog_exercise/presentation/widget/common/scaffold_layout.dart';
import 'package:velog_exercise/presentation/widget/custom_clipper/basic_clip_path.dart';
import 'package:velog_exercise/presentation/widget/custom_clipper/line_to_clipper.dart';
import 'package:velog_exercise/presentation/widget/custom_clipper/line_to_clipper_second.dart';
import 'package:velog_exercise/presentation/widget/custom_clipper/oval_clipper.dart';
import 'package:velog_exercise/presentation/widget/custom_clipper/polygon_clipper.dart';
import 'package:velog_exercise/presentation/widget/custom_clipper/quadratic_bezier_to_clipper.dart';
import 'package:velog_exercise/presentation/widget/custom_clipper/rect_clipper.dart';

class CustomClipperScreen extends StatelessWidget {
  const CustomClipperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
        child: SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // const Text('one LineTo Sample'),
              // BasicClipPath(path: LineToClipper()),
              const Text('two LineTo Sample'),
              BasicClipPath(path: LineToClipperSecond()),
              const Text('quadraticBezierTo Sample'),
              BasicClipPath(path: QuadraticBezierToClipper()),
              const Text('사각형 Sample'),
              BasicClipPath(path: RectClipper()),
              const Text('원형 Sample'),
              BasicClipPath(path: OvalClipper()),
              const Text('다각형 Sample'),
              BasicClipPath(path: PolygonClipper()),
            ],
          ),
        ),
      ),
    ));
  }
}
