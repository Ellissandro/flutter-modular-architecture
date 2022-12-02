import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:wakke_manager_v2/modules/home/models/apiadvisor_model.dart';
import 'package:wakke_manager_v2/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          controller.getTime();
        }),
        child: const Icon(Icons.refresh),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              ValueListenableBuilder<List<ApiAdvisorModel>>(
                valueListenable: controller.time,
                builder: (context, model, child) {
                  if (model.isEmpty) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Column(
                    children: [...model.map((e) => Text(e.title!))],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
