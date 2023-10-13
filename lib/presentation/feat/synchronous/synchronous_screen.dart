import 'package:flutter/material.dart';
import 'package:velog_exercise/presentation/widget/common/scaffold_layout.dart';
import 'package:velog_exercise/util/utils.dart';

class SynchronousScreen extends StatelessWidget {
  const SynchronousScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
        child: SafeArea(
      child: Center(
        child: Column(
          children: [
            TextButton(
                onPressed: () => fetchDataTest(context),
                child: const Text('Future 테스트 하기')),
            TextButton(
                onPressed: () => fetchMultipleData(context),
                child: const Text('Future.wait 테스트 하기')),
            TextButton(
                onPressed: () => getStream(context),
                child: const Text('Stream 테스트 하기'))
          ],
        ),
      ),
    ));
  }

  // 기본 Future 테스트
  Future<int> fetchData() async {
    await Future.delayed(const Duration(seconds: 1));
    return 1; // 비동기 작업 결과
  }

  void fetchDataTest(BuildContext context) {
    fetchData().then((result) {
      Utils.showSnackAndPrint(context, '비동기 작업 결과: $result');
    }).catchError((error) {
      Utils.showSnackAndPrint(context, '에러 발생: $error');
    });
  }

  // Future.wait 테스트
  Future<String> someAsyncFunction1() async {
    await Future.delayed(const Duration(seconds: 1));
    return 'Function1';
  }

  Future<String> someAsyncFunction2() async {
    await Future.delayed(const Duration(seconds: 5));
    return 'Function2';
  }

  void fetchMultipleData(BuildContext context) async {
    final results =
        await Future.wait([someAsyncFunction1(), someAsyncFunction2()]);
    // results에 각 작업의 결과가 저장됨
    Utils.showSnackAndPrint(context, '모든 작업 완료: $results');
  }

  // 기본 Stream 테스트
  Stream<int> countStream() async* {
    for (int i = 0; i <= 10; i++) {
      await Future.delayed(const Duration(seconds: 1));
      yield i; // 스트림에 값 전달
    }
  }

  void getStream(BuildContext context) async {
    await for (int count in countStream()) {
      Utils.showSnackAndPrint(context, '스트림 값: $count');
    }
  }
}
