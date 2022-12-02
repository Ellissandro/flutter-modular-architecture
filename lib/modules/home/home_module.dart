import 'package:flutter_modular/flutter_modular.dart';
import 'package:wakke_manager_v2/modules/home/home_controller.dart';
import 'package:wakke_manager_v2/modules/home/home_page.dart';
import 'package:wakke_manager_v2/modules/home/repositories/apiadvisor_repository.dart';
import 'package:wakke_manager_v2/modules/home/repositories/apiadvisor_repository_interface.dart';
import 'package:wakke_manager_v2/modules/home/viewmodels/apiadvisor_view_model.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get())),
        Bind((i) => ApiAdvisorViewModel(i.get())),
        Bind<IApiAdvisor>((i) => ApiAdvisorRepository(i.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const HomePage()),
      ];
}
