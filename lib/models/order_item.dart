import 'package:cantina/models/food.dart';

class OrderItem {
  final Food food;
  final int quantity;

  OrderItem({required this.food, this.quantity=0});

  double get subtotal {
    return food.price * quantity;
  }

  OrderItem increaseQuantity() {
    return OrderItem(food: food, quantity: quantity + 1);
  }

  OrderItem decreaseQuantity() {
    return OrderItem(food: food, quantity: quantity - 1);
  }
}
