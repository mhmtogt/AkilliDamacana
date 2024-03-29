import 'package:akilli_damacana_mini_project/core/constants/product_list.dart';
import 'package:akilli_damacana_mini_project/core/theme/app_colors.dart';
import 'package:akilli_damacana_mini_project/presentation/common_widget/card_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreenDrawer extends StatelessWidget {
  const MainScreenDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Drawer(
      backgroundColor: AppColors.koyuMavi,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ElevatedButton(
            onPressed: () {
              context.router.pop();
              //Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Row(
                children: [
                  const Text(
                    'MENU',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  SvgPicture.asset('assets/icons/ic_x.svg'),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          color: const Color(0xFF3D88C2),
          width: 260.w,
          height: 40.h,
          child: Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Profilim',
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ),
        Container(
          child: Align(
            alignment: Alignment.bottomLeft,
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'Sipariş Et',
                  style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: TextButton(
              onPressed: () {},
              child: Text(
                'Ayarlar',
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              )),
        ),
        SizedBox(
          height: 200,
          child: Align(
            alignment: Alignment.center,
            child: Card(
                color: const Color(0XFF3D88C2),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Önerilen Su Marakaları',
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 20.h,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return CardWidget(
                product: ProductList.products[index],
              );
            },
          ),
        )
      ]),
    ));
  }
}
