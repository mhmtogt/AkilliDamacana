import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardWidget extends StatelessWidget {
  final ImageProvider image;

  const CardWidget({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                image: image,
                width: 65.w,
                height: 52.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
