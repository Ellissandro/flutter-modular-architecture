import 'package:mobx/mobx.dart';
import 'package:wakke_manager_v2/modules/form/models/client.dart';

part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  final client = Client();

  @computed
  bool get isValid {
    return validateName() == null && validateEmail() == null;
  }

  String? validateName() {
    if (client.name.isEmpty) {
      return 'Este campo é obrigatório';
    }

    return null;
  }

  String? validateEmail() {
    if (client.email.isEmpty) {
      return 'Este campo é obrigatório';
    }

    if (!client.email.contains('@')) {
      return 'Email inválido';
    }

    return null;
  }

  dispose() {}
}
