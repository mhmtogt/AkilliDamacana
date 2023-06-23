import 'package:akilli_damacana_mini_project/core/app_router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // _wait3secAndNavigateLoginRoute();
    super.initState();
  }

  // Future<void> _wait3secAndNavigateLoginRoute() async {
  //   await Future.delayed(const Duration(seconds: 3), () {
  //     context.router.replace(const LoginRoute());
  //   });
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/im_girisoncesibg.png'),
          alignment: Alignment.bottomCenter,
        )),
        child: Column(
          children: [
            SizedBox(
              height: 134.h,
            ),
            Image.asset(
              'assets/images/im_logo.png',
              width: 318.w,
              height: 158.h,
            ),
            const Spacer(),
            GestureDetector(
                onTap: () {
                  context.router.replace(
                    const LoginRoute(),
                  );
                },
                child: SvgPicture.asset(
                  'assets/icons/loading.svg',
                )),
            SizedBox(
              width: 200.w,
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
