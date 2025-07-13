import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final double? width;
  final Color? bgColor;
  final Color? borderRadiusColor;
  final double? xPadding;
  final double? yPadding;
  final TextStyle? textStyle;
  final bool isLoading;
  final Widget? child;
  final Function()? onPressed;

  const CustomButton({
    super.key,
    this.width,
    this.bgColor,
    this.borderRadiusColor,
    this.xPadding,
    this.yPadding,
    this.textStyle,
    this.isLoading = false,
    this.text,
    required this.onPressed,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? AppColors.primaryColor,
          padding: EdgeInsets.symmetric(
            horizontal:
                xPadding != null ? xPadding!.w : 8,
            vertical: yPadding != null ? yPadding!.h : 12,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.r),
            side: BorderSide(
              color: borderRadiusColor ?? AppColors.transparent,
              width: 1.5.sp,
            ),
          ),
        ),
        child: child ??
            (isLoading
                ? const Center(
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(
                        color: AppColors.background,
                        strokeWidth: 1.5,
                      ),
                    ),
                  )
                : Text(
                    text != null ? text! : "",
                    style: textStyle ??
                        AppTextStyles.font18Medium(context).copyWith(
                          color: AppColors.background,
                        ),
                  )),
      ),
    );
  }
}
