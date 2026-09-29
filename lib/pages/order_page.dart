import 'package:cantina/widgets/food_card.dart';
import 'package:cantina/widgets/order_card.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            onPressed: () {},
            tooltip: "Excluir todos os pedidos",
            icon: Icon(
              Icons.delete_sweep_outlined,
              size: 35,
              color: Colors.deepOrange,
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          tooltip: "Voltar para Cardápio",
          icon: Icon(Icons.arrow_back, size: 35, color: Colors.deepOrange),
        ),
      ),
      body: Column(
        children: [
          Padding(
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
                        Text(
                          "10",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight(700),
                          ),
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
                        Text(
                          "15 min",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight(700),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.paid_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Total",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight(600),
                          ),
                        ),
                        Text(
                          "R\$ 30.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight(700),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: OrderCard(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: OrderCard(),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange, // Sets the background color
            foregroundColor: Colors.white, // Sets the text/icon color
          ),
          onPressed: () {},
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
                Text("R\$ 30.00", style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
