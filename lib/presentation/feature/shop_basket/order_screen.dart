import 'package:akilli_damacana_mini_project/core/theme/app_colors.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
@RoutePage()
class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: SvgPicture.asset('assets/icons/ic_logo_yatay.svg'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Scaffold.of(context).openEndDrawer();
            },
            icon: SvgPicture.asset('assets/icons/ic_hamburger_menu.svg'),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.blue.shade900,
          currentIndex: 0,
          onTap: (index) {
            
          },
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
                  ),
                ],
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Order Screen'),
      ),
    );
  }
}
