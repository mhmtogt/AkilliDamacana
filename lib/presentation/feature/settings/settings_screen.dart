import 'package:akilli_damacana_mini_project/core/theme/app_colors.dart';
import 'package:akilli_damacana_mini_project/core/theme/text_styles.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Center(
            child: Container(
              width: 165.w,
              height: 145.h,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/im_su.png',
                      ),
                      fit: BoxFit.fill)),
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.koyuMavi,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Profili Düzenle',
                          style: TextStyles.robotoRegular16),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.koyuMavi,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Şifreyi Değiştir',
                        style: TextStyles.robotoRegular16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  color: AppColors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.white, width: 1),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Boy',
                      labelStyle: TextStyles.robotoRegular16,
                      prefixIcon: FittedBox(
                        fit: BoxFit.none,
                        child: SvgPicture.asset(
                          'assets/icons/ic_boy.svg',
                          width: 16.w,
                          height: 16.h,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 4.0),
                Card(
                  color: AppColors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.white, width: 1),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Kilo',
                        labelStyle: TextStyles.robotoRegular16,
                        prefixIcon: FittedBox(
                          fit: BoxFit.none,
                          child: SvgPicture.asset(
                            'assets/icons/ic_kg.svg',
                            width: 16.w,
                            height: 16.h,
                          ),
                        )),
                  ),
                ),
                const SizedBox(height: 4.0),
                Card(
                  color: AppColors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Colors.white, width: 1),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Yaş',
                        labelStyle: TextStyles.robotoRegular16,
                        prefixIcon: FittedBox(
                          fit: BoxFit.none,
                          child: SvgPicture.asset(
                            'assets/icons/ic_calender.svg',
                            width: 16.w,
                            height: 16.h,
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Card(
                    color: AppColors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.white, width: 1),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Tüketilen Su  (LT)',
                          labelStyle: TextStyles.robotoRegular16,
                          prefixIcon: FittedBox(
                            fit: BoxFit.none,
                            child: SvgPicture.asset(
                              'assets/icons/ic_person.svg',
                         
                            ),
                          )),
                    ),
                  ),
                ),
                const SizedBox(width: 16.0),
                Flexible(
                  child: Card(
                    color: AppColors.koyuMavi,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIconConstraints:
                              BoxConstraints(minHeight: 30.h, minWidth: 30.w),
                          labelText: '   4.5 LT',
                          labelStyle: TextStyles.robotoRegular16,
                          suffixIcon: SvgPicture.asset(
                            'assets/icons/ic_bardak.svg',
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4.0),
          Card(
            color: AppColors.koyuMavi,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: TextButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Kaydet',
                  style: TextStyles.robotoRegular16,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
