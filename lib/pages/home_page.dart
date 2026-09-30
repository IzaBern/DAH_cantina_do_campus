import 'package:cantina/core/service_locator.dart';
import 'package:cantina/models/app_page.dart';
import 'package:cantina/pages/menu_page.dart';
import 'package:cantina/pages/order_page.dart';
import 'package:cantina/store/navigation_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NavigationStore store = getIt<NavigationStore>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        switch (store.currentPage) {
          case AppPage.menu:
            return MenuPage();
          case AppPage.order:
            return OrderPage();
        }
      },
    );
  }
}
