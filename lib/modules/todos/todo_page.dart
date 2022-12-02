import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:wakke_manager_v2/modules/todos/components/item_widget.dart';
import 'package:wakke_manager_v2/modules/todos/models/item_model.dart';
import 'package:wakke_manager_v2/modules/todos/todo_controller.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final controller = TodoController();

  _dialog() {
    final model = ItemModel(check: false, title: '');

    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: const Text('Adicionar'),
            content: TextField(
              onChanged: model.setTitle,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Novo item',
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  controller.addItem(model);
                  Navigator.of(context).pop();
                },
                child: const Text('Slvar'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Cancelar'),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: controller.setFilter,
          decoration: const InputDecoration(hintText: 'Pesquisar...'),
        ),
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
          itemCount: controller.listFiltered.length,
          itemBuilder: (_, index) {
            final item = controller.listItems[index];
            return ItemWidget(
              item: item,
              removeClicked: () {
                controller.removeItem(item);
              },
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _dialog();
        },
      ),
    );
  }
}
