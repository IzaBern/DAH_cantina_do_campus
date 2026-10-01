import 'package:cantina/core/service_locator.dart';
import 'package:cantina/models/order_item.dart';
import 'package:cantina/store/order_store.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  OrderCard({super.key, required this.item});
  OrderItem item;
  OrderStore store = getIt<OrderStore>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: Card(
        color: Colors.amber[100],
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(item.food.emoji, style: TextStyle(fontSize: 30)),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 8),
                            Text(
                              item.food.name,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight(700),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(
                                  10,
                                  2,
                                  10,
                                  2,
                                ),
                                child: Text(item.food.category),
                              ),
                            ),
                            (item.food.vegetarian)
                                ? Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                        10,
                                        2,
                                        10,
                                        2,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Vegetariano",
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight(500),
                                            ),
                                          ),
                                          SizedBox(width: 8),
                                          Icon(
                                            Icons.eco_outlined,
                                            color: Colors.green,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                : SizedBox(),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 15),
                  IconButton(
                    onPressed: () => store.remove(item),
                    tooltip: "Excluir item",
                    icon: Icon(
                      Icons.delete_outline,
                      size: 35,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
                child: Divider(color: Colors.deepOrange, thickness: 1),
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          "R\$",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight(500),
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          item.food.price.toStringAsFixed(2),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight(500),
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "cada",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight(500),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () => store.removeOne(item),
                        tooltip: "Excluir um",
                        icon: Icon(
                          Icons.remove_circle_outline,
                          color: Colors.deepOrange,
                        ),
                      ),
                      Text(
                        item.quantity.toString(),
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 16,
                          fontWeight: FontWeight(700),
                        ),
                      ),
                      IconButton(
                        onPressed: () => store.addFood(item.food),
                        tooltip: "Adicionar um",
                        icon: Icon(
                          Icons.add_circle_outline,
                          color: Colors.deepOrange,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
