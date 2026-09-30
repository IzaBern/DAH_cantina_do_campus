import 'package:flutter/material.dart';

class TopMenuCard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        color: Colors.deepOrange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
    );
  }
}
