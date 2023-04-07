import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/im_girisoncesibg.png'),
            alignment: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 134.h,
            ),
            Image.asset(
              'assets/images/im_logo.png',
              width: 318.w,
            ),
            const Spacer(),
            SvgPicture.asset('assets/icons/ic_loading.svg'),
            SizedBox(height: 70.h),
          ],
        ),
      ),
    );
  }
}
