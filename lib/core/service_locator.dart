import 'package:cantina/store/navigation_store.dart';
import 'package:cantina/store/order_store.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpDependencies() {
  if (!getIt.isRegistered<NavigationStore>()) {
    getIt.registerSingleton<NavigationStore>(NavigationStore());
  }

  if (!getIt.isRegistered<OrderStore>()) {
    getIt.registerSingleton<OrderStore>(OrderStore());
  }
}
