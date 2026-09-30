import 'package:cantina/models/food.dart';
import 'package:cantina/models/order_item.dart';
import 'package:mobx/mobx.dart';
part 'order_store.g.dart';

class OrderStore = _OrderStoreBase with _$OrderStore;

abstract class _OrderStoreBase with Store {
  ObservableList<OrderItem> itens = ObservableList<OrderItem>();

  @action
  void addFood(Food food) {
    int index = itens.indexWhere((item) => item.food.id == food.id);
    if (index == -1) {
      itens.add(OrderItem(food: food));
      return;
    }
    itens[index] = itens[index].increaseQuantity();
  }

  OrderItem? findItem(Food f) {
    for (var item in itens) {
      if (item.food.id == f.id) {
        return item;
      }
    }
    return null;
  }

  int quantituOf(Food f) {
    return findItem(f)?.quantity ?? 0;
  }

  @computed
  double get totalPrice {
    return itens.fold(0, (acumulador, item) => acumulador + item.subtotal);
  }

  @action
  void remove(OrderItem item){
    itens.removeWhere((c) => c.food.id == item.food.id);
  }

  @action
  void removeOne(OrderItem item){
    final index = itens.indexWhere((i)=> i.food.id == item.food.id);

    if(index==-1){
      return;
    }

    if(itens[index].quantity == 1){
      itens.removeAt(index);
      return;
    }

    itens[index] = itens[index].decreaseQuantity();

  }

  @action
  void removeAll(){
    itens.clear();
  }

}
