import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:wakke_manager_v2/modules/form/controller.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  _textField(
      {required String labelText, onChanged, String? Function()? errortext}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        errorText: errortext == null ? null : errortext(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final controller = Provider.of<Controller>(context);
    final controller = GetIt.I.get<Controller>();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Observer(builder: (_) {
            return _textField(
                labelText: 'name',
                onChanged: controller.client.changeName,
                errortext: controller.validateName);
          }),
          const SizedBox(height: 20),
          Observer(builder: (_) {
            return _textField(
                labelText: 'email',
                onChanged: controller.client.changeemail,
                errortext: controller.validateEmail);
          }),
          const SizedBox(height: 50),
          Observer(builder: (_) {
            return ElevatedButton(
              onPressed: controller.isValid ? () {} : null,
              child: const Text('Salvar'),
            );
          }),
        ],
      ),
    );
  }
}
