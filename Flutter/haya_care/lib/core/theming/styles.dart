import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:haya_care/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haya_care/core/theming/font_weight_helper.dart';

//add styles as needed like this // to be edited
class TextStyles {
  static TextStyle font16WhiteBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.fromString("bold"),
    color: ColorsManager.white,
  );

  static TextStyle font16BlackBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.fromString("bold"),
    color: ColorsManager.black,
  );

  static TextStyle font12BlackSemiBold = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.fromString("semiBold"),
    color: ColorsManager.black,
  );

  static TextStyle font16BlackSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.fromString("semiBold"),
    color: ColorsManager.black,
  );

  static TextStyle font16BlackMedium = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.fromString("medium"),
    color: ColorsManager.black,
  );

  static TextStyle font14BlackBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.fromString("bold"),
    color: ColorsManager.black,
  );

  static TextStyle font16DarkGreysRegular = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.fromString("regular"),
    color: ColorsManager.darkGrey,
  );
  static TextStyle font16DarkerGreysSemiBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.fromString("semiBold"),
    color: ColorsManager.darkerGrey,
  );
  static TextStyle font14BlackRegular = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.fromString("regular"),
    color: ColorsManager.black,
  );
}
