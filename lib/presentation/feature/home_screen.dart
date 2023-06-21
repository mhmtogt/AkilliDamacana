import 'package:akilli_damacana_mini_project/core/theme/app_colors.dart';
import 'package:akilli_damacana_mini_project/presentation/common_widget/card_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: AppColors.suMavi,
      body: Padding(
        padding:
            const EdgeInsets.only(top: kToolbarHeight, left: 10, right: 10),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 19.w,
          mainAxisSpacing: 21.h,
          children: const [
            CardWidget(
              image: AssetImage('assets/images/im_hayat.png'),
            ),
            CardWidget(
              image: AssetImage('assets/images/im_pinar.png'),
            ),
            CardWidget(
              image: AssetImage('assets/images/im_damla.png'),
            ),
            CardWidget(
              image: AssetImage('assets/images/im_saka.png'),
            ),
            CardWidget(
              image: AssetImage('assets/images/im_sirma.png'),
            ),
            CardWidget(
              image: AssetImage('assets/images/im_hamidiye.png'),
            ),
            CardWidget(
              image: AssetImage('assets/images/im_danone.png'),
            ),
            CardWidget(
              image: AssetImage('assets/images/im_erikli.png'),
            ),
            CardWidget(
              image: AssetImage('assets/images/im_fuska.png'),
            ),
            CardWidget(
              image: AssetImage('assets/images/im_ozkaynak.png'),
            ),
            CardWidget(
              image: AssetImage('assets/images/im_nestle.png'),
            ),
            CardWidget(
              image: AssetImage('assets/images/im_abant.png'),
            ),
          ],
        ),
      ),
    );
  }
}