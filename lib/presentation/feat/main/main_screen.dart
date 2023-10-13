import 'package:flutter/material.dart';
import 'package:velog_exercise/presentation/feat/bloc/bloc_screen.dart';
import 'package:velog_exercise/presentation/feat/exception/exception_screen.dart';
import 'package:velog_exercise/presentation/feat/synchronous/synchronous_screen.dart';
import 'package:velog_exercise/presentation/widget/common/scaffold_layout.dart';
import 'package:velog_exercise/presentation/widget/main/main_outline_button.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
        title: 'Velog 예제 메인 페이지',
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                MainOutLineButton(
                  text: 'Bloc 예제',
                  onTap: () => pushScreen(context, const BlocScreen()),
                ),
                MainOutLineButton(
                  text: '비동기 예제',
                  onTap: () => pushScreen(context, const SynchronousScreen()),
                ),
                MainOutLineButton(
                  text: '예외 예제',
                  onTap: () => pushScreen(context, const ExceptionScreen()),
                ),
              ],
            ),
          ),
        ));
  }

  void pushScreen(BuildContext context, dynamic screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
