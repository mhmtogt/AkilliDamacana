import 'package:akilli_damacana_mini_project/core/theme/app_colors.dart';
import 'package:akilli_damacana_mini_project/core/theme/text_styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, 
    required this.title, 
    required this.onPressed, 
    required this.contentVerticalPadding,
  });

  final String title;
  final void Function() onPressed;
  final double contentVerticalPadding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(10.r), ),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding:EdgeInsets.symmetric(vertical: contentVerticalPadding),
          backgroundColor: AppColors.white,

      ),
      onPressed: onPressed,
      child: Text(
         title,
         style: TextStyles.robotoRegular16.copyWith(color:AppColors.blue),
         
         ),
    );
  }
}
