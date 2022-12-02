import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:wakke_manager_v2/app_module.dart';
import 'package:wakke_manager_v2/modules/form/controller.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<Controller>(Controller());

  return runApp(ModularApp(module: AppModule(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Controller>(
          create: (_) => Controller(),
          dispose: (_, controller) {
            controller.dispose();
          },
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          brightness: Brightness.dark,
        ),
        debugShowCheckedModeBanner: false,
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
      ),
    );
  }
}
