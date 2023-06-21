import 'package:akilli_damacana_mini_project/presentation/common_widget/dismissible_body.dart';
import 'package:akilli_damacana_mini_project/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:akilli_damacana_mini_project/core/app_router/app_router.dart';
import 'package:provider/provider.dart';

void main() {
  return runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductProvider>(
            create: (_) => ProductProvider()),
      ],
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 736),
      builder: (context, child) {
        return DismissibleBody(
          child: MaterialApp.router(
            routerConfig: _appRouter.config(),
          ),
        );
      },
    );
  }
}
