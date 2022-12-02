import 'package:flutter_modular/flutter_modular.dart';
import 'package:wakke_manager_v2/core/interfaces/client_http_interface.dart';
import 'package:wakke_manager_v2/core/interfaces/local_storage_interface.dart';
import 'package:wakke_manager_v2/core/services/server_service.dart';
import 'package:wakke_manager_v2/core/services/shared_prefs_service.dart';
import 'package:wakke_manager_v2/modules/home/home_module.dart';
import 'package:wakke_manager_v2/modules/login/login_module.dart';
import 'package:wakke_manager_v2/core/services/dio_http_service.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind<IClientHttp>((i) => DioHttpService()),
        Bind<ILocalStorage>((i) => SharedPrefsService()),
        Bind((i) => ServerService()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: LoginModule()),
        ModuleRoute('/home', module: HomeModule()),
      ];
}
