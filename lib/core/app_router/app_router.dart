import 'package:akilli_damacana_mini_project/presentation/feature/shop_basket/order_screen.dart';
import 'package:akilli_damacana_mini_project/presentation/feature/shop_basket/shop_basket.dart';
import 'package:akilli_damacana_mini_project/presentation/feature/home/home_screen.dart';
import 'package:akilli_damacana_mini_project/presentation/feature/main_screen/main_screen.dart';
import 'package:akilli_damacana_mini_project/presentation/feature/settings/settings_screen.dart';
import 'package:akilli_damacana_mini_project/presentation/feature/splash/splash_screen.dart';
import 'package:akilli_damacana_mini_project/presentation/feature/login/login_screen.dart';
import 'package:auto_route/auto_route.dart';

part "app_router.gr.dart";

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: SplashRoute.page,
      path: '/',
    ),
    AutoRoute(
      page: LoginRoute.page,
    ),
    AutoRoute(page: MainRoute.page, path: '/main', children: [
      AutoRoute(
       
        page: OrderRoute.page),
      AutoRoute(
        initial: true,
        page: HomeRoute.page,
      ),
      AutoRoute(
        page: CartRoute.page,
      ),
      AutoRoute(
        page: SettingsRoute.page,
      ),
     
    ]),
  ];
}
