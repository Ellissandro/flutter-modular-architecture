// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Login on LoginBase, Store {
  Computed<String>? _$fullNameComputed;

  @override
  String get fullName => (_$fullNameComputed ??=
          Computed<String>(() => super.fullName, name: 'LoginBase.fullName'))
      .value;

  late final _$nameAtom = Atom(name: 'LoginBase.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$lastNameAtom =
      Atom(name: 'LoginBase.lastName', context: context);

  @override
  String get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  late final _$LoginBaseActionController =
      ActionController(name: 'LoginBase', context: context);

  @override
  dynamic changeName(String newName) {
    final _$actionInfo =
        _$LoginBaseActionController.startAction(name: 'LoginBase.changeName');
    try {
      return super.changeName(newName);
    } finally {
      _$LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeLastName(String newLastName) {
    final _$actionInfo = _$LoginBaseActionController.startAction(
        name: 'LoginBase.changeLastName');
    try {
      return super.changeLastName(newLastName);
    } finally {
      _$LoginBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
lastName: ${lastName},
fullName: ${fullName}
    ''';
  }
}
