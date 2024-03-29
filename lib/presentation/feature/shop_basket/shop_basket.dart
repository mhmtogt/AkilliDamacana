import 'package:akilli_damacana_mini_project/core/app_router/app_router.dart';
import 'package:akilli_damacana_mini_project/core/theme/app_colors.dart';
import 'package:akilli_damacana_mini_project/core/theme/text_styles.dart';
import 'package:akilli_damacana_mini_project/model/basket_item.dart';
import 'package:akilli_damacana_mini_project/providers/basket_provider.dart';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  void showEmptyCardtPopup(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
          context: context,
          builder: (_) => AlertDialog(
                backgroundColor: AppColors.blue,
                title: const Text(
                  'sepet boş',
                  style: TextStyle(color: Colors.white),
                ),
                content: const Text('sepetinize ürün ekleyin',
                    style: TextStyle(color: Colors.white)),
                actions: [
                  TextButton(
                    onPressed: () => context.router.pop(),
                    child: const Text('tamam',
                        style: TextStyle(color: Colors.white)),
                  )
                ],
              ));
    });
  }

  @override
  Widget build(BuildContext context) {
    final basket = context.watch<BasketProvider>().basket;
    double totalPrice = context.watch<BasketProvider>().calculateTotalPrice();

    if (basket.products.isEmpty) {
      showEmptyCardtPopup(context);
    }

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
          if (basket.products.isEmpty) ...[
            Expanded(
              child: Center(
                child: Text(
                  'Sepetinizde ürün bulunmamaktadır.',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ] else ...[
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: basket.products.length,
                itemBuilder: (context, index) {
                  final basketItem = basket.products[index];
                  return Padding(
                    padding: const EdgeInsets.all(16),
                    child: BasketProductCard(basketItem: basketItem),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 414.w,
                child: Card(
                  color: AppColors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'TOPLAM TUTAR: ${totalPrice.toStringAsFixed(2.bitLength)} TL',
                          style: TextStyle(
                            color: AppColors.blue,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 414.w,
                child: Card(
                  color: AppColors.koyuMavi,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: TextButton(
                    onPressed: () {
                      context.router.push(const OrderRoute());
                    },
                    child: Text(
                      'SİPARİŞİ ONAYLA ',
                      style: TextStyle(
                        color: AppColors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]
        ],
      ),
    );
  }
}

class BasketProductCard extends StatelessWidget {
  const BasketProductCard({
    super.key,
    required this.basketItem,
  });

  final BasketItem basketItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.r,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150.r,
            height: 150.r,
            decoration: BoxDecoration(
                gradient: const RadialGradient(colors: [
                  Colors.white,
                  Color(0xFFD6EBF4),
                ], radius: 0.5),
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(
                  color: Colors.green,
                )),
            child: Image.asset(
              basketItem.product.image,
              width: 120.r,
              height: 120.r,
            ),
          ),
          SizedBox(
            width: 14.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '19Lt ${basketItem.product.name} Damacana Su',
                style: TextStyles.robotoRegular16,
              ),
              SizedBox(
                height: 9.h,
              ),
              Text(
                '${basketItem.product.price} TL',
                style: TextStyles.robotoRegular16,
              ),
              const Spacer(),
              SizedBox(
                width: 172.w,
                height: 40.h,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: FloatingActionButton(
                            backgroundColor: AppColors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(10.r),
                              ),
                            ),
                            onPressed: () {
                              context
                                  .read<BasketProvider>()
                                  .decreaseQuantity(basketItem);
                            },
                            child: Text(
                              '-',
                              style: TextStyle(
                                  color: AppColors.blue, fontSize: 34),
                            ))),
                    Expanded(
                        flex: 3,
                        child: Container(
                            height: double.infinity,
                            color: AppColors.koyuMavi,
                            child: Center(
                                child: Text(
                              '${basketItem.quantity}',
                              style: TextStyle(
                                  color: AppColors.white, fontSize: 20),
                            )))),
                    Expanded(
                        flex: 1,
                        child: FloatingActionButton(
                          backgroundColor: AppColors.white,
                          elevation: 0,
                          onPressed: () {
                            context
                                .read<BasketProvider>()
                                .increaseQuantity(basketItem);
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(10.r),
                            ),
                          ),
                          child: Text(
                            '+',
                            style:
                                TextStyle(color: AppColors.blue, fontSize: 24),
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
