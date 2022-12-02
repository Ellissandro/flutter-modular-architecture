// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TodoController on _TodoControllerBase, Store {
  late final _$listItemsAtom =
      Atom(name: '_TodoControllerBase.listItems', context: context);

  @override
  ObservableList<ItemModel> get listItems {
    _$listItemsAtom.reportRead();
    return super.listItems;
  }

  @override
  set listItems(ObservableList<ItemModel> value) {
    _$listItemsAtom.reportWrite(value, super.listItems, () {
      super.listItems = value;
    });
  }

  late final _$_TodoControllerBaseActionController =
      ActionController(name: '_TodoControllerBase', context: context);

  @override
  dynamic addItem(ItemModel model) {
    final _$actionInfo = _$_TodoControllerBaseActionController.startAction(
        name: '_TodoControllerBase.addItem');
    try {
      return super.addItem(model);
    } finally {
      _$_TodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItem(ItemModel model) {
    final _$actionInfo = _$_TodoControllerBaseActionController.startAction(
        name: '_TodoControllerBase.removeItem');
    try {
      return super.removeItem(model);
    } finally {
      _$_TodoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listItems: ${listItems}
    ''';
  }
}
