import 'package:akilli_damacana_mini_project/core/theme/app_colors.dart';
import 'package:akilli_damacana_mini_project/core/theme/text_styles.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class Piece1 extends StatefulWidget {
  const Piece1({super.key});

  @override
  State<Piece1> createState() => _PieceState();
}

class _PieceState extends State<Piece1> {
  int _quantity1 = 0; //sepetteki urunler
   double _price1 = 19.90;

  void _inc1() {
    setState(() {
      _quantity1++; // sepet sayısını artırır
    });
  }

  void _dec1() {
    setState(() {
      if (_quantity1 > 0) {
        _quantity1--; // sepet sayısını azaltır
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        
            SizedBox(
            width: 43.w,
            height: 40.h,
            child: ElevatedButton(
                onPressed: _quantity1 > 0 ? _dec1 : null, // azalt
                
                style: ElevatedButton.styleFrom(
                    alignment: Alignment.center,
                    backgroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))), // arttır
                child: SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: SvgPicture.asset('assets/icons/ic_remove.svg',
                        fit: BoxFit.fill))),
          ),

          Container(
              color: AppColors.koyuMavi,
              alignment: Alignment.center,
              width: 86.w,
              height: 40.h,
              child: Text(
                '$_quantity1',
                style: TextStyles.robotoBold16,
              )), // kaç tane var

          SizedBox(
            width: 43.w,
            height: 40.h,
            child: ElevatedButton(
                onPressed: _inc1,
                style: ElevatedButton.styleFrom(
                    alignment: Alignment.center,
                    backgroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0))), // arttır
                child: SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: SvgPicture.asset('assets/icons/ic_add.svg',
                        fit: BoxFit.fill))),
          ),
        ],
      ),
    );
  }
}