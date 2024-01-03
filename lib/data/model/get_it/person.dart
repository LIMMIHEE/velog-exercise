import 'package:get_it/get_it.dart';
import 'package:velog_exercise/data/model/get_it/mouth.dart';

class Person {
  late Mouth mouth;

  Person() {
    mouth = GetIt.I<Mouth>();
    print('Person이 생성되었습니다.');
  }

  void hungry() {
    print('Person is hungry');
    mouth.eat();
  }
}
