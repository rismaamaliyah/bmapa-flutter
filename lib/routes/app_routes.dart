import 'package:bmapa/presentation/login_tab_container_screen/login_tab_container_screen.dart';
import 'package:bmapa/presentation/login_tab_container_screen/binding/login_tab_container_binding.dart';
import 'package:bmapa/presentation/kuy_screen/kuy_screen.dart';
import 'package:bmapa/presentation/kuy_screen/binding/kuy_binding.dart';
import 'package:bmapa/presentation/pilih_screen/pilih_screen.dart';
import 'package:bmapa/presentation/pilih_screen/binding/pilih_binding.dart';
import 'package:bmapa/presentation/pilih_one_screen/pilih_one_screen.dart';
import 'package:bmapa/presentation/pilih_one_screen/binding/pilih_one_binding.dart';
import 'package:bmapa/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:bmapa/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String loginPage = '/login_page';

  static const String loginTabContainerScreen = '/login_tab_container_screen';

  static const String registerPage = '/register_page';

  static const String kuyScreen = '/kuy_screen';

  static const String pilihScreen = '/pilih_screen';

  static const String pilihOneScreen = '/pilih_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loginTabContainerScreen,
      page: () => LoginTabContainerScreen(),
      bindings: [
        LoginTabContainerBinding(),
      ],
    ),
    GetPage(
      name: kuyScreen,
      page: () => KuyScreen(),
      bindings: [
        KuyBinding(),
      ],
    ),
    GetPage(
      name: pilihScreen,
      page: () => PilihScreen(),
      bindings: [
        PilihBinding(),
      ],
    ),
    GetPage(
      name: pilihOneScreen,
      page: () => PilihOneScreen(),
      bindings: [
        PilihOneBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginTabContainerScreen(),
      bindings: [
        LoginTabContainerBinding(),
      ],
    )
  ];
}
