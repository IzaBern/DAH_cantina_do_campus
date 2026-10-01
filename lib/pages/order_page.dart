import 'package:cantina/core/service_locator.dart';
import 'package:cantina/models/order_item.dart';
import 'package:cantina/store/navigation_store.dart';
import 'package:cantina/store/order_store.dart';
import 'package:cantina/widgets/food_card.dart';
import 'package:cantina/widgets/order_card.dart';
import 'package:cantina/widgets/order_clean.dart';
import 'package:cantina/widgets/top_order_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class OrderPage extends StatelessWidget {
  OrderPage({super.key});
  NavigationStore storePage = getIt<NavigationStore>();
  OrderStore storeOrder = getIt<OrderStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => (storeOrder.itens.isNotEmpty)
          ? Scaffold(
              appBar: AppBar(
                title: Text(
                  "Meu pedido",
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight(700),
                  ),
                ),
                backgroundColor: Colors.amber[100],
                toolbarHeight: 80,
                centerTitle: true,
                actions: [
                  IconButton(
                    onPressed: () => storeOrder.removeAll(),
                    tooltip: "Excluir todos os pedidos",
                    icon: Icon(
                      Icons.delete_sweep_outlined,
                      size: 35,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
                leading: IconButton(
                  onPressed: () {
                    storePage.goToMenu();
                  },
                  tooltip: "Voltar para Cardápio",
                  icon: Icon(
                    Icons.arrow_back,
                    size: 35,
                    color: Colors.deepOrange,
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(150),
                  child: TopOrderCard(),
                ),
              ),
              body: Observer(
                builder: (_) => (storeOrder.itens.isNotEmpty)
                    ? ListView.builder(
                        itemCount: storeOrder.itens.length,
                        itemBuilder: (c, i) {
                          return OrderCard(item: storeOrder.itens[i]);
                        },
                      )
                    : SizedBox(),
              ),
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.deepOrange, // Sets the background color
                    foregroundColor: Colors.white, // Sets the text/icon color
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return AlertDialog(
                          backgroundColor: Colors.amber[100],
                          title: Text(
                            "Pedido enviado!",
                            style: TextStyle(
                              fontWeight: FontWeight(700),
                              color: Colors.deepOrange,
                            ),
                          ),
                          content: SizedBox(
                            height: 120,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Itens:",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      storeOrder.totalItens.toString(),
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight(700),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Text(
                                      "Total:",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "R\$ ${storeOrder.totalPrice.toStringAsFixed(2)}",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight(700),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Text(
                                      "Preparo:",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "${storeOrder.maxTime} min",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight(700),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                storeOrder.removeAll();
                              },
                              child: Text(
                                "OK",
                                style: TextStyle(
                                  fontWeight: FontWeight(700),
                                  color: Colors.deepOrange,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.check_circle_outline, size: 30),
                        SizedBox(width: 20),
                        Text("Finalizar", style: TextStyle(fontSize: 18)),
                        SizedBox(width: 10),
                        Text("•", style: TextStyle(fontSize: 18)),
                        SizedBox(width: 10),
                        Observer(
                          builder: (_) {
                            return Text(
                              "R\$ ${storeOrder.totalPrice.toStringAsFixed(2)}",
                              style: TextStyle(fontSize: 18),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          : OrderClean(),
    );
  }
}
