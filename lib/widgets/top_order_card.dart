import 'package:cantina/core/service_locator.dart';
import 'package:cantina/store/order_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

// ignore: must_be_immutable
class TopOrderCard extends StatelessWidget {
  TopOrderCard({super.key});
  OrderStore store = getIt<OrderStore>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: Colors.deepOrange,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.shopping_bag_outlined,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Itens",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight(600),
                    ),
                  ),
                  Observer(
                    builder: (_) {
                      return Text(
                        store.totalItens.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight(700),
                        ),
                      );
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.access_time_outlined,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Preparo",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight(600),
                    ),
                  ),
                  Observer(
                    builder: (_) {
                      return Text(
                        "${store.maxTime.toString()} min",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight(700),
                        ),
                      );
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.paid_outlined, size: 40, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                    "Total",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight(600),
                    ),
                  ),
                  Observer(
                    builder: (_) {
                      return Text(
                        "R\$ ${store.totalPrice.toStringAsFixed(2)}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight(700),
                        ),
                      );
                    },
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
