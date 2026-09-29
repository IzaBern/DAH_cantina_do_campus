import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber[100],
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Text("🍔", style: TextStyle(fontSize: 30)),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 8),
                          Text(
                            "X-Salada",
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
                              padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                              child: Text("Sanduiche"),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                              child: Text("Alto em gordura"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15),
                IconButton(
                  onPressed: () {},
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
                        "18.00",
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
                      onPressed: () {},
                      tooltip: "Excluir um",
                      icon: Icon(
                        Icons.remove_circle_outline,
                        color: Colors.deepOrange,
                      ),
                    ),
                    Text(
                      "10",
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 16,
                        fontWeight: FontWeight(700),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
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
    );
  }
}
