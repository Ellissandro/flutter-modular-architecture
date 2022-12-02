import 'package:flutter_modular/flutter_modular.dart';
import 'package:wakke_manager_v2/modules/todos/todo_page.dart';

import '../form/form_page.dart';

class LoginModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const TodoPage()),
      ];
}
