import 'package:get/get.dart';

import '../modules/akun/bindings/akun_binding.dart';
import '../modules/akun/views/akun_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/controllers/home_controller.dart';
import '../modules/home/views/home_view.dart';
import '../modules/navbar/bindings/navbar_binding.dart';
import '../modules/navbar/views/mainpage_view.dart';
import '../modules/navbar/views/navbar_view.dart';
import '../modules/riwayat/bindings/riwayat_binding.dart';
import '../modules/riwayat/views/riwayat_view.dart';
import '../modules/simulasi/bindings/simulasi_binding.dart';
import '../modules/simulasi/views/simulasi_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAINPAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.NAVBAR,
      page: () => const NavbarView(),
      binding: NavbarBinding(),
    ),
    GetPage(
        name: _Paths.MAINPAGE,
        page: () => MainPageView(
              index: 0,
              initialPage: 0,
            ),
        binding: BindingsBuilder(() {
          Get.put(HomeController());
        })),
    GetPage(
      name: _Paths.SIMULASI,
      page: () => const SimulasiView(),
      binding: SimulasiBinding(),
    ),
    GetPage(
      name: _Paths.RIWAYAT,
      page: () => const RiwayatView(),
      binding: RiwayatBinding(),
    ),
    GetPage(
      name: _Paths.AKUN,
      page: () => const AkunView(),
      binding: AkunBinding(),
    ),
  ];
}
