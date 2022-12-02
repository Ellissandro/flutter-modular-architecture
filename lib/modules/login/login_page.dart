import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wakke_manager_v2/modules/login/store/login_store.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Login controller = Login();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Nome'),
              ),
              onChanged: controller.changeName,
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text('Sobrenome'),
              ),
              onChanged: controller.changeLastName,
            ),
            const SizedBox(height: 20),
            Observer(builder: (_) {
              return Column(
                children: [
                  Text(controller.fullName),
                ],
              );
            }),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushReplacementNamed('/home');
                Modular.to.pushReplacementNamed('/home');
              },
              child: const Text('Entrar'),
            )
          ],
        ),
      ),
    );
  }
}
