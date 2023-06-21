import 'package:akilli_damacana_mini_project/core/theme/app_colors.dart';
import 'package:akilli_damacana_mini_project/model/product.dart';
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
    return Scaffold(
      backgroundColor: AppColors.suMavi,
      body: Padding(
        padding:
            const EdgeInsets.only(top: kToolbarHeight, left: 10, right: 10),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 19.w,
          mainAxisSpacing: 21.h,
          children: [
            CardWidget(
              image: const AssetImage('assets/images/im_hayat.png'),
              product: Product('Hayat Su', 'assets/images/im_hayat.png', 0),
            ),
            CardWidget(
              image: const AssetImage(
                'assets/images/im_pinar.png',
              ),
              product: Product('Pinar', 'assets/images/im_hayat.png', 0),
            ),
            CardWidget(
              image: const AssetImage('assets/images/im_damla.png'),
              product: Product('Damla', 'assets/images/im_hayat.png', 0),
            ),
            CardWidget(
              image: const AssetImage('assets/images/im_saka.png'),
              product: Product('Saka', 'assets/images/im_hayat.png', 0),
            ),
            CardWidget(
              image: const AssetImage('assets/images/im_sirma.png'),
              product: Product('Sirma', 'assets/images/im_hayat.png', 0),
            ),
            CardWidget(
              image: const AssetImage('assets/images/im_hamidiye.png'),
              product: Product('Hayat Su', 'assets/images/im_hayat.png', 0),
            ),
            CardWidget(
              image: const AssetImage('assets/images/im_danone.png'),
              product: Product('Hayat Su', 'assets/images/im_hayat.png', 0),
            ),
            CardWidget(
              image: const AssetImage('assets/images/im_erikli.png'),
              product: Product('Hayat Su', 'assets/images/im_hayat.png', 0),
            ),
            CardWidget(
              image: const AssetImage('assets/images/im_fuska.png'),
              product: Product('Hayat Su', 'assets/images/im_hayat.png', 0),
            ),
            CardWidget(
              image: const AssetImage('assets/images/im_ozkaynak.png'),
              product: Product('Hayat Su', 'assets/images/im_hayat.png', 0),
            ),
            CardWidget(
              image: const AssetImage('assets/images/im_nestle.png'),
              product: Product('Hayat Su', 'assets/images/im_hayat.png', 0),
            ),
            CardWidget(
              image: const AssetImage('assets/images/im_abant.png'),
              product: Product('Hayat Su', 'assets/images/im_hayat.png', 0),
            ),
          ],
        ),
      ),
    );
  }
}
