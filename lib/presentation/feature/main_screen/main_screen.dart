import 'package:akilli_damacana_mini_project/core/app_router/app_router.dart';
import 'package:akilli_damacana_mini_project/core/theme/app_colors.dart';
import 'package:akilli_damacana_mini_project/presentation/feature/main_screen/main_screen_drawer.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      endDrawer: const MainScreenDrawer(),
      scaffoldKey: _scaffoldKey,
      backgroundColor: Colors.blue.shade100,
      appBarBuilder: (context, tabsRouter) {
        return AppBar(
          backgroundColor: AppColors.white,
          title: Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: SvgPicture.asset(
              'assets/icons/ic_logo_yatay.svg',
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  _scaffoldKey.currentState?.openEndDrawer();
                },
                icon: SvgPicture.asset('assets/icons/ic_hamburger_menu.svg'))
          ],
        );
      },
      routes: const [
        CartTabRoute(),
        HomeRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return SizedBox(
          height: 80,
          child: BottomNavigationBar(
            backgroundColor: Colors.blue.shade900,
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/ic_shop.svg'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/ic_home.svg'),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/ic_settings.svg'),
                    Positioned(
                      child: SvgPicture.asset('assets/icons/ic_setici.svg'),
                    )
                  ],
                ),
                label: '',
              ),
            ],
          ),
        );
      },
    );
  }
}
