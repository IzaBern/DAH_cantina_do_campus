import 'package:cantina/models/food.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final Food food;
  final VoidCallback onAdd;
  const FoodCard({super.key, required this.food, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 6, 20, 6),
      child: Card(
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
                      child: Text(food.emoji, style: TextStyle(fontSize: 40)),
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 5),
                        child: Text(
                          food.name,
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
                                food.category,
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontWeight: FontWeight(500),
                                ),
                              ),
                            ),
                          ),
                          (food.vegetarian)
                              ? Card(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.green,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                      15,
                                      5,
                                      15,
                                      5,
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
                ],
              ),
              SizedBox(height: 15),
              Text(food.description),
              SizedBox(height: 15),
              Row(
                children: [
                  Icon(Icons.whatshot_outlined, color: Colors.deepOrange),
                  SizedBox(width: 5),
                  Text(
                    "${food.calories} kcal",
                    style: TextStyle(fontWeight: FontWeight(500)),
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.access_time_outlined, color: Colors.deepOrange),
                  SizedBox(width: 5),
                  Text(
                    "${food.time} min",
                    style: TextStyle(fontWeight: FontWeight(500)),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "R\$ ${food.price.toStringAsFixed(2)}",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight(700),
                      color: Colors.deepOrange,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Colors.deepOrange, // Sets the background color
                      foregroundColor: Colors.white, // Sets the text/icon color
                    ),
                    onPressed: onAdd,
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
      ),
    );
  }
}
