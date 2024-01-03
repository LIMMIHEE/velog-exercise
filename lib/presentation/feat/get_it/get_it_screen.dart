import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:velog_exercise/data/locator/get_it_locator.dart';
import 'package:velog_exercise/data/model/get_it/group.dart';
import 'package:velog_exercise/data/model/get_it/mouth.dart';
import 'package:velog_exercise/data/model/get_it/person.dart';
import 'package:velog_exercise/presentation/widget/common/scaffold_layout.dart';
import 'package:velog_exercise/presentation/widget/main/main_outline_button.dart';
import 'package:velog_exercise/util/utils.dart';

class GetItScreen extends StatefulWidget {
  const GetItScreen({super.key});

  @override
  State<GetItScreen> createState() => _GetItScreenState();
}

class _GetItScreenState extends State<GetItScreen> {
  late Group group1;
  late Group group2;
  late Mouth mouth;
  Person? person;

  @override
  void initState() {
    GetItLocator.locator.setupSingleton();
    GetItLocator.locator.setUpFactory();
    GetItLocator.locator.setUpLazySingleton();

    group1 = GetIt.I<Group>();
    group2 = GetIt.I<Group>();
    mouth = GetIt.I<Mouth>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldLayout(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("get it screen"),
            const SizedBox(
              height: 20,
            ),
            Text('User1 name = ${group1.name}, id = ${group1.id}'),
            Text('User2 name = ${group2.name}, id = ${group2.id}'),
            const SizedBox(
              height: 40,
            ),
            MainOutLineButton(
              text: '팩토리로 생성된 객체의 두 유저는 같은가?',
              onTap: () {
                Utils.showSnackAndPrint(context, '${group1 == group2}');
              },
            ),
            MainOutLineButton(
              text: '밥 먹기',
              onTap: () => mouth.eat(),
            ),
            MainOutLineButton(
              text: person == null ? '사람 데려오기' : '사람은 배고픈가요?',
              onTap: () {
                person ??= GetIt.I<Person>();
                person?.hungry();
              },
            ),
          ],
        ),
      ),
    );
  }
}
