import 'package:akilli_damacana_demo/core/theme/app_colors.dart';
import 'package:akilli_damacana_demo/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    super.key,
    required this.labelText,
    required this.iconPath,
  });

  final String labelText;
  final String iconPath;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.white,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 24.w, top: 14.h, bottom: 17.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: AppColors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: AppColors.white,
          ),
        ),
        prefixIconConstraints: BoxConstraints(
          minWidth: 24.r,
          minHeight: 24.r,
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 14.w),
          child: SvgPicture.asset(
            iconPath,
          ),
        ),
        labelText: labelText,
        labelStyle: TextStyles.robotoRegular16.copyWith(color: AppColors.white),
      ),
    );
  }
}
