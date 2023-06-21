import 'package:akilli_damacana_mini_project/core/theme/app_colors.dart';
import 'package:akilli_damacana_mini_project/presentation/common_widget/fiyat_ve_adet.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: SizedBox(
                width: 414.w,
                height: 50.h,
                child: Card(
                  color: AppColors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
            ),
            SizedBox(
              height: 19.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 150.w,
                    height: 146.h,
                    child: Card(
                      color: AppColors.suMavi,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Image.asset(
                        'assets/images/im_hayat.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                
                const fiiyat_ve_adet1()
              ],
            ),
            SizedBox(
              height: 19.h,
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 150.w,
                    height: 146.h,
                    child: Card(
                      color: AppColors.suMavi,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 51.0, 19.0, 47.0),
                        child: Image.asset(
                          'assets/images/im_erikli.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                const fiiyat_ve_adet2()
              ],
            ),
          
          ],
          
        ),
        
      ),
    );
  }
}
