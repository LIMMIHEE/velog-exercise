import 'package:flutter/material.dart';
import 'package:velog_exercise/presentation/widget/common/scaffold_layout.dart';
import 'package:velog_exercise/util/utils.dart';

class ExceptionScreen extends StatelessWidget {
  const ExceptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
        child: SafeArea(
      child: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () => tryCatchTeat(context),
                child: const Text('tryCatch 테스트 하기')),
            TextButton(
                onPressed: () => tryCatchOnTest(context),
                child: const Text('tryCatchOn 테스트 하기')),
            TextButton(
                onPressed: () => finallyTest(context),
                child: const Text('finally 테스트 하기')),
            TextButton(
                onPressed: () => throwTest(context),
                child: const Text('throw 테스트 하기')),
            TextButton(
                onPressed: () => rethrowTest(context),
                child: const Text('rethrow 테스트 하기')),
          ],
        ),
      ),
    ));
  }

  void tryCatchTeat(BuildContext context) {
    try {
      var result = 10 ~/ 0; // 예외 발생
    } catch (e) {
      Utils.showSnackAndPrint(context, 'tryCatch 예외가 발생했습니다: $e');
    }
  }

  void tryCatchOnTest(BuildContext context) {
    try {
      var result = 10 ~/ 0; // 예외 발생
    } on Exception catch (e) {
      Utils.showSnackAndPrint(context, 'Exception 타입의 예외가 발생했습니다: $e');
      // Exception 유형의 예외 처리
    } catch (e) {
      Utils.showSnackAndPrint(context, 'Exception 이외 타입의 예외가 발생했습니다: $e');
      // 다른 모든 예외 유형을 처리
    }
  }

  void finallyTest(BuildContext context) {
    try {
      // 예외가 발생할 수 있는 코드
    } catch (e) {
      // 예외 처리
    } finally {
      Utils.showSnackAndPrint(context, 'finally에 도달하였습니다.');
      // 항상 실행되는 코드
    }
  }

  void throwTest(BuildContext context) {
    try {
      // 예외 발생
      throw Exception('사용자 정의 예외');
    } catch (e) {
      Utils.showSnackAndPrint(context, 'throw를 진행하였습니다.');
    }
  }

  void rethrowTest(BuildContext context) {
    try {
      // 예외 발생
      throw Exception('사용자 정의 예외');
    } catch (e) {
      Utils.showSnackAndPrint(context, 'rethrow 진행합니다.');
      rethrow;
    }
  }
}
