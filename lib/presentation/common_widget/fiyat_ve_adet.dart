import 'package:akilli_damacana_mini_project/core/theme/text_styles.dart';
import 'package:akilli_damacana_mini_project/presentation/common_widget/basket_num2.dart';
import 'package:akilli_damacana_mini_project/presentation/common_widget/basket_num1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';





class fiiyat_ve_adet1 extends StatelessWidget {
  const fiiyat_ve_adet1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '19 Lt Hayat Damacana Su',
          style: TextStyles.robotoBold16,
        ),
        const SizedBox(height: 9),
        Text('19.90 TL',style: TextStyles.robotoRegular16,),
         SizedBox(height: 58.h,),
        const Piece1()
      ],
      
    );
  }
}

class fiiyat_ve_adet2 extends StatelessWidget {
  const fiiyat_ve_adet2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '19 Lt Erikli Damacana Su',
          style: TextStyles.robotoBold16,
        ),
        const SizedBox(height: 9),
        Text('17.90 TL',style: TextStyles.robotoRegular16,),
         SizedBox(height: 58.h,),
        const Piece2()
      ],
      
    );
  }
}




