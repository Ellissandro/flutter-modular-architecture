import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:wakke_manager_v2/modules/todos/models/item_model.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget(
      {super.key, required this.item, required this.removeClicked});
  final ItemModel item;

  final Function() removeClicked;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return ListTile(
        title: Text(item.title),
        leading: Checkbox(
          value: item.check,
          onChanged: (value) {
            item.setCheck(value!);
          },
        ),
        trailing: IconButton(
          color: Colors.red,
          icon: const Icon(Icons.remove_circle),
          onPressed: removeClicked,
        ),
      );
    });
  }
}
