import 'package:flutter/material.dart';
import 'package:velog_exercise/presentation/feat/bloc_exercise/bloc_exercise_screen.dart';
import 'package:velog_exercise/presentation/widget/common/scaffold_layout.dart';
import 'package:velog_exercise/presentation/widget/main/main_outline_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldLayout(
        title: 'Velog 예제 메인 페이지',
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
              ],
            ),
          ),
        ));
  }

  void pushScreen(BuildContext context, dynamic screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
