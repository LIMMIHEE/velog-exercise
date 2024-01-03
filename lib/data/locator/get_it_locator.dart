import 'package:get_it/get_it.dart';
import 'package:velog_exercise/data/model/get_it/group.dart';
import 'package:velog_exercise/data/model/get_it/mouth.dart';
import 'package:velog_exercise/data/model/get_it/person.dart';

class GetItLocator {
  static GetItLocator locator = GetItLocator();

  // GetIt 싱긆톤 형식.
  void setupSingleton() {
    if (!GetIt.instance.isRegistered<Mouth>()) {
      GetIt.instance.registerSingleton(Mouth());
    }
  }

  // GetIt 팩토리 형식.
  void setUpFactory() {
    if (!GetIt.instance.isRegistered<Group>()) {
      GetIt.instance
          .registerFactory<Group>(() => Group(name: 'get_it', id: 99));
    }
  }

  // GetIt lazy 싱글톤 형식.
  void setUpLazySingleton() {
    if (!GetIt.instance.isRegistered<Person>()) {
      GetIt.instance.registerLazySingleton(() => Person());
    }
  }
}
