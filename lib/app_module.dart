import 'package:flutter_modular/flutter_modular.dart';
import 'package:wakke_manager_v2/core/interfaces/client_http_interface.dart';
import 'package:wakke_manager_v2/modules/home/home_module.dart';
import 'package:wakke_manager_v2/modules/login/login_module.dart';
import 'package:wakke_manager_v2/core/services/client_http_service.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<IClientHttp>((i) => ClientHttpService()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: LoginModule()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
