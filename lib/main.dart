import 'package:akilli_damacana_demo/login_screen.dart';
import 'package:akilli_damacana_demo/presentation/common_widgets/dismissible_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 736),
      builder: (context, child) {
        return const DismissibleBody(
          child: MaterialApp(
            home: LoginScreen(),
          ),
        );
      },
    );
  }
}
