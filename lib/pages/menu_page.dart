import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[100],
        toolbarHeight: 80,
        title: Text(
          "Cantina do Campus",
          style: TextStyle(fontWeight: FontWeight(600)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
            child: Badge.count(
              count: 10,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.receipt_long_sharp,
                  size: 35,
                  color: Colors.black,
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
                color: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.flatware, size: 50),
                      SizedBox(width: 30),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cardápio de hoje",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight(600),
                            ),
                          ),
                          Text("Escolha seus itens e monte o pedido."),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
