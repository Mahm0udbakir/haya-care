import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:haya_care/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haya_care/core/theming/font_weight_helper.dart';

//add styles as needed like this // to be edited
class TextStyles {
  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.fromString("bold"),
    color: Colors.black,
  );
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeightHelper.fromString("bold"),
    color: ColorsManager.primaryColor,
  );
  static TextStyle font13GreyRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.fromString("regular"),

    color: ColorsManager.grey,
  );
  static TextStyle font16WhiteSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.fromString("semiBold"),

    color: Colors.white,
  );
  static TextStyle font24BlueBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.fromString("bold"),

    color: ColorsManager.primaryColor,
  );
  static TextStyle font13BlueRegular = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.fromString("regular"),

    color: ColorsManager.primaryColor,
  );
  static TextStyle font14GreyRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.fromString("regular"),

    color: ColorsManager.grey,
  );

  static TextStyle font13BlueBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.fromString("bold"),

    color: ColorsManager.primaryColor,
  );
  static TextStyle font14BlueSemiBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.fromString("semiBold"),

    color: ColorsManager.primaryColor,
  );

  static TextStyle font13BlueSemiBold = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeightHelper.fromString("semiBold"),

    color: ColorsManager.primaryColor,
  );
  static TextStyle font14GreuRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.fromString("regular"),

    color: ColorsManager.grey,
  );
}
