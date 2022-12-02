import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:wakke_manager_v2/modules/form/controller.dart';
import 'package:wakke_manager_v2/modules/form/home_body.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);
    // final controller = GetIt.I.get<Controller>();

    return Scaffold(
        appBar: AppBar(
          title: Observer(
            builder: (context) {
              return Text(controller.isValid
                  ? 'Formulário Validado'
                  : 'Formulário Não Validado');
            },
          ),
        ),
        body: const HomeBody());
  }
}
