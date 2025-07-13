import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.textController,
    this.labelText,
    this.style,
    this.validator,
    this.isObscure,
    this.radius,
    this.colorRadius,
    this.keyboardType,
    this.suffixIcon,
    this.prefixIcon,
  });

  final TextEditingController? textController;
  final String? labelText;
  final TextStyle? style;
  final bool? isObscure;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final double? radius;
  final Color? colorRadius;
  final TextInputType? keyboardType;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: isObscure ?? false,
      controller: textController,
      style: style,
      decoration: InputDecoration(
        fillColor: AppColors.background,
        filled: true,
        hintText: labelText,
        hintStyle: AppTextStyles.font16Regular(context).copyWith(color: AppColors.lightGrey),
        errorStyle: AppTextStyles.font16Medium(context).copyWith(color: AppColors.lightGrey),
        prefixIcon: prefixIcon,
        prefixIconColor: AppColors.primaryColor,
        suffixIcon: suffixIcon,
        suffixIconColor: AppColors.primaryColor,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.r)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide:  BorderSide(color:colorRadius ?? AppColors.primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide:  BorderSide(color: colorRadius ?? AppColors.primaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.r),
          borderSide: BorderSide(color: colorRadius ?? Colors.red),
        ),
      ),
      validator: validator,
    );
  }
}
