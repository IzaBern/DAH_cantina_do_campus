// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OrderStore on _OrderStoreBase, Store {
  Computed<double>? _$totalPriceComputed;

  @override
  double get totalPrice => (_$totalPriceComputed ??= Computed<double>(
    () => super.totalPrice,
    name: '_OrderStoreBase.totalPrice',
  )).value;

  late final _$_OrderStoreBaseActionController = ActionController(
    name: '_OrderStoreBase',
    context: context,
  );

  @override
  void addFood(Food food) {
    final _$actionInfo = _$_OrderStoreBaseActionController.startAction(
      name: '_OrderStoreBase.addFood',
    );
    try {
      return super.addFood(food);
    } finally {
      _$_OrderStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remove(OrderItem item) {
    final _$actionInfo = _$_OrderStoreBaseActionController.startAction(
      name: '_OrderStoreBase.remove',
    );
    try {
      return super.remove(item);
    } finally {
      _$_OrderStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeOne(OrderItem item) {
    final _$actionInfo = _$_OrderStoreBaseActionController.startAction(
      name: '_OrderStoreBase.removeOne',
    );
    try {
      return super.removeOne(item);
    } finally {
      _$_OrderStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeAll() {
    final _$actionInfo = _$_OrderStoreBaseActionController.startAction(
      name: '_OrderStoreBase.removeAll',
    );
    try {
      return super.removeAll();
    } finally {
      _$_OrderStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
totalPrice: ${totalPrice}
    ''';
  }
}
