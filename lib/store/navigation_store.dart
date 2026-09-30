import 'package:cantina/models/app_page.dart';
import 'package:mobx/mobx.dart';
part 'navigation_store.g.dart';

class NavigationStore = _NavigationStoreBase with _$NavigationStore;

abstract class _NavigationStoreBase with Store {
  @observable
  AppPage currentPage = AppPage.menu;

  @computed
  bool get isMenuPage => currentPage == AppPage.menu;

  @computed
  bool get isOrderPage => currentPage == AppPage.order;

  @action
  void goToMenu() {
    currentPage = AppPage.menu;
  }

  @action
  void goToOrder() {
    currentPage = AppPage.order;
  }
}
