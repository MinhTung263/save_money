import '../app_src.dart';

class RoutePage {
  static var route = [
    GetPage(
      name: RoutesApp.routeInit,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: RoutesApp.routeBuilder,
      page: () => const PageBuilder(),
    ),
  ];
}
