import 'package:akilli_damacana_mini_project/model/product.dart';
import 'package:akilli_damacana_mini_project/providers/basket_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CardWidget extends StatelessWidget {
  final Product product;

  const CardWidget({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<BasketProvider>().addProduct(product);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
            color: Colors.green.shade100,
            width: 5.w,
          )),
          child: Card(
            color: Colors.green.shade50,
            margin: EdgeInsets.zero,
            elevation: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(product.image),
                  width: 65.w,
                  height: 52.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
