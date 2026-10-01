import 'package:cantina/core/service_locator.dart';
import 'package:cantina/store/navigation_store.dart';
import 'package:flutter/material.dart';

class OrderClean extends StatelessWidget {
  OrderClean({super.key});
  NavigationStore storePage = getIt<NavigationStore>();

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
        leading: IconButton(
          onPressed: () {
            storePage.goToMenu();
          },
          tooltip: "Voltar para Cardápio",
          icon: Icon(Icons.arrow_back, size: 35, color: Colors.deepOrange),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.fastfood_outlined, size: 130, color: Colors.deepOrange),
            SizedBox(height: 20),
            Text(
              "Nenhum item no pedido.",
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepOrange,
                fontWeight: FontWeight(500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
