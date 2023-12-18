import 'package:get/get.dart';

import '../modules/car_details/bindings/car_details_binding.dart';
import '../modules/car_details/views/car_details_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CAR_DETAILS,
      page: () => const CarDetailsView(),
      binding: CarDetailsBinding(),
    ),
  ];
}
