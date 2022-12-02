import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class Login = LoginBase with _$Login;

abstract class LoginBase with Store {
  @observable
  String name = '';

  @observable
  String lastName = '';

  @computed
  String get fullName => "$name $lastName";

  @action
  changeName(String newName) {
    name = newName;
  }

  @action
  changeLastName(String newLastName) {
    lastName = newLastName;
  }
}
