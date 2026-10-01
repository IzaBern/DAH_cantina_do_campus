import 'package:cantina/core/data/food_data.dart';
import 'package:cantina/core/service_locator.dart';
import 'package:cantina/store/navigation_store.dart';
import 'package:cantina/store/order_store.dart';
import 'package:cantina/widgets/food_card.dart';
import 'package:cantina/widgets/top_menu_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MenuPage extends StatelessWidget {
  new({super.key});
  var storePage = getIt<NavigationStore>();
  final storeOrder = getIt<OrderStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber[100],
        toolbarHeight: 80,
        title: Text(
          "Cantina do Campus",
          style: TextStyle(
            fontWeight: FontWeight(700),
            color: Colors.deepOrange,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
            child: Observer(
              builder: (_) => Badge.count(
                count: storeOrder.totalItens,
                backgroundColor: Colors.deepOrange,
                child: IconButton(
                  onPressed: () => storePage.goToOrder(),
                  tooltip: "Ir para Meu Pedido",
                  icon: Icon(
                    Icons.receipt_long_sharp,
                    size: 35,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(90.0),
          child: TopMenuCard(),
        ),
      ),
      body: ListView.builder(
        itemCount: foodlist.length,
        itemBuilder: (c, i) {
          var f = foodlist[i];
          return FoodCard(
            food: f,
            onAdd: () {
              getIt<OrderStore>().addFood(f);
              var store = getIt<OrderStore>();
              store.addFood(f);
            },
          );
        },
      ),
    );
  }
}
