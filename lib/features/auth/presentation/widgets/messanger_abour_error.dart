import 'package:FoodApp/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ScaffoldFeatureController<SnackBar, SnackBarClosedReason> messangerAboutError(
        BuildContext context, String text) =>
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        content: Text(
          text,
          style: AppTextStyle.textStyleFunk(
            size: 18,
            color: AppColor.white,
          ),
        ),
        backgroundColor: Colors.red,
      ),
    );

ScaffoldFeatureController<SnackBar, SnackBarClosedReason>
    messangerAboutSccussfully(BuildContext context, String text) =>
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            content: Text(
              text,
              style: AppTextStyle.textStyleFunk(
                size: 18,
                color: AppColor.white,
              ),
            ),
            backgroundColor: AppColor.green,
          ),
        );
