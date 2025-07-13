import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_font_weights.dart';
import 'app_text_size.dart';

class AppTextStyles {
  static const Color textColor =
      AppColors.black; // Assuming you still need AppColors

  static String getFontFamily(String fontFamily) {

    return fontFamily;
  }

  // Base style to reuse common properties
  static TextStyle baseStyle({
    required FontWeight fontWeight,
    required double fontSize,
    FontStyle? fontStyle,
    BuildContext? context, // Add context
  }) {

    return TextStyle(
      color: textColor,
      fontWeight: fontWeight,
      fontSize: fontSize,
      fontStyle: fontStyle,
    );
  }



  static TextStyle font16Medium(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize16,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font16Regular(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize16,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font16SemiBold(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightSemiBold,
    fontSize: AppTextSizes.fontSize16,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font14Regular(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize14,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font24Regular(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightRegular,
    fontSize: AppTextSizes.fontSize24,
    fontStyle: FontStyle.normal,
    context: context,
  );









  static TextStyle font24Bold(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightBold,
    fontSize: AppTextSizes.fontSize24,
    fontStyle: FontStyle.normal,
    context: context,
  );




  static TextStyle font14Medium(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize14,
    fontStyle: FontStyle.normal,
    context: context,
  );
  static TextStyle font18Medium(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize18,
    fontStyle: FontStyle.normal,
    context: context,
  );










  static TextStyle poppins14Medium(BuildContext context) => baseStyle(
    fontWeight: AppFontWeights.fontWeightMedium,
    fontSize: AppTextSizes.fontSize14,
    fontStyle: FontStyle.italic,
    context: context,
  );







}
