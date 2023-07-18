import 'package:akilli_damacana_mini_project/core/app_router/app_router.dart';
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
        backgroundColor: AppColors.blue,
        body: Column(
          children: [
            SizedBox(
              width: 414.w,
              height: 50.h,
              child: Card(
                color: AppColors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: AppColors.white,
                      ),
                    ),
                    SizedBox(
                      width: 90.w,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'SEPETİM',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 130.w,
                    ),
                    SvgPicture.asset(
                      'assets/icons/ic_w_shop.svg',
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100.h,
            ),
            Container(
              child: Image.asset('assets/images/im_ord.png'),
            ),
            SizedBox(
              height: 50.h,
              width: 250.w,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: AppColors.koyuMavi,
                child: TextButton(
                  onPressed: () {
                    context.router.push(const SettingsRoute());
                  },
                  child: Text(
                    'Profile Git',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
