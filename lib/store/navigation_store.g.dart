// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$NavigationStore on _NavigationStoreBase, Store {
  Computed<bool>? _$isMenuPageComputed;

  @override
  bool get isMenuPage => (_$isMenuPageComputed ??= Computed<bool>(
    () => super.isMenuPage,
    name: '_NavigationStoreBase.isMenuPage',
  )).value;
  Computed<bool>? _$isOrderPageComputed;

  @override
  bool get isOrderPage => (_$isOrderPageComputed ??= Computed<bool>(
    () => super.isOrderPage,
    name: '_NavigationStoreBase.isOrderPage',
  )).value;

  late final _$currentPageAtom = Atom(
    name: '_NavigationStoreBase.currentPage',
    context: context,
  );

  @override
  AppPage get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(AppPage value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  late final _$_NavigationStoreBaseActionController = ActionController(
    name: '_NavigationStoreBase',
    context: context,
  );

  @override
  void goToMenu() {
    final _$actionInfo = _$_NavigationStoreBaseActionController.startAction(
      name: '_NavigationStoreBase.goToMenu',
    );
    try {
      return super.goToMenu();
    } finally {
      _$_NavigationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void goToOrder() {
    final _$actionInfo = _$_NavigationStoreBaseActionController.startAction(
      name: '_NavigationStoreBase.goToOrder',
    );
    try {
      return super.goToOrder();
    } finally {
      _$_NavigationStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
isMenuPage: ${isMenuPage},
isOrderPage: ${isOrderPage}
    ''';
  }
}
