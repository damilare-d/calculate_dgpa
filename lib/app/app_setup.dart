import 'package:calculate_dgpa/ui/screen/home_screen/homeScreen.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked/stacked_annotations.dart';

import '../core/services/calculation_service.dart';
import '../ui/screen/calculator_cgpa/calculator_screen.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeScreen, initial: true),
    MaterialRoute(
      page: CalculatorScreen,
    )
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: CalculatorServices)
  ],
)
class $AppSetup {}
