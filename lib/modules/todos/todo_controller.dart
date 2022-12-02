import 'package:mobx/mobx.dart';
import 'package:wakke_manager_v2/modules/todos/models/item_model.dart';
part 'todo_controller.g.dart';

class TodoController = _TodoControllerBase with _$TodoController;

abstract class _TodoControllerBase with Store {
  @observable
  ObservableList<ItemModel> listItems = [
    ItemModel(title: "Item 1", check: true),
    ItemModel(title: "Item 2", check: false),
    ItemModel(title: "Item 2", check: false),
  ].asObservable();

  @action
  addItem(ItemModel model) {
    listItems.add(model);
  }

  @action
  removeItem(ItemModel model) {
    listItems.removeWhere((item) => item.title == model.title);
  }
}
