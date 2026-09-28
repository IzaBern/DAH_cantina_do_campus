import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber[100],
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Card(
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("🍔", style: TextStyle(fontSize: 40)),
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
                      child: Text(
                        "X-Salada",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight(700),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.deepOrange,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                            child: Text(
                              "Sanduiche",
                              style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight(500),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Colors.deepOrange,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                            child: Text(
                              "Alto em gordura",
                              style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight(500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Text("Pão, hambúrguer de 100g, queijo, alface, tomate"),
            SizedBox(height: 15),
            Row(
              children: [
                Icon(Icons.whatshot_outlined),
                SizedBox(width: 5),
                Text("640 kcal"),
                SizedBox(width: 15),
                Icon(Icons.access_time_outlined),
                SizedBox(width: 5),
                Text("15 min"),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "R\$ 18.00",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight(700)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.deepOrange, // Sets the background color
                    foregroundColor: Colors.white, // Sets the text/icon color
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.add_shopping_cart_outlined, size: 23),
                        SizedBox(width: 10),
                        Text("Adicionar", style: TextStyle(fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
