import 'package:akilli_damacana_mini_project/core/constants/product_list.dart';
import 'package:akilli_damacana_mini_project/core/theme/app_colors.dart';
import 'package:akilli_damacana_mini_project/presentation/common_widget/card_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: ProductList.products.length,
          itemBuilder: (context, index) {
            return CardWidget(
              product: ProductList.products[index],
            );
          },
        ),
      ),
    );
  }
}
