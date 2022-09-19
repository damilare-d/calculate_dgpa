import 'package:calculate_dgpa/app/app_setup.locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app_setup.router.dart';

class HomeScreenViewModel extends BaseViewModel {
  final _navigation = locator<NavigationService>();

  void navigate() {
    _navigation.navigateTo(Routes.calculatorScreen);
  }
}
