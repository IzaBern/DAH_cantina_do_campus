import 'package:cantina/widgets/food_card.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const new({super.key});

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
            child: Badge.count(
              count: 10,
              backgroundColor: Colors.deepOrange,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.receipt_long_sharp,
                  size: 35,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 130,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                color: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.flatware, size: 50, color: Colors.white),
                      SizedBox(width: 30),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cardápio de hoje",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight(600),
                            ),
                          ),
                          Text(
                            "Escolha seus itens e monte o pedido.",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: FoodCard(),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: FoodCard(),
          ),
        ],
      ),
    );
  }
}
