// ignore_for_file: must_be_immutable

import 'package:FoodApp/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageInElevetedButton extends StatelessWidget {
  PageInElevetedButton({
    Key? key,
    required this.function,
    required this.titleName,
    required this.status,
  }) : super(key: key);

  Function function;
  String titleName;
  bool status;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: !status
          ? null
          : () {
              function();
            },
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.of(context).size.width, 54.h),
        backgroundColor: AppColor.buttonGradient2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
      child: Text(
        titleName,
        style: AppTextStyle.subLoc,
      ),
    );
  }
}
