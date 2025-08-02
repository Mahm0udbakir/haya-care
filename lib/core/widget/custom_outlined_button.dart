import 'package:flutter/material.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/theme/app_style.dart';

/// Generic outlined button widget
class CustomOutlinedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? borderColor;
  final Color? overlayColor;
  final TextStyle? textStyle;
  final Widget? icon;
  final TextDirection? textDirection;
  final MainAxisAlignment? contentAlignment;

  const CustomOutlinedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height,
    this.width,
    this.borderRadius,
    this.borderColor,
    this.overlayColor,
    this.textStyle,
    this.icon,
    this.textDirection,
    this.contentAlignment,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: textDirection ?? TextDirection.ltr,
      child: SizedBox(
        width: width ?? double.infinity,
        height: height ?? 50,
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: borderColor ?? AppColors.primaryColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
            ),
            overlayColor: AppColors.primaryColor,
          ),
          child: Row(
            mainAxisAlignment: contentAlignment ?? MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) icon!,
              if (icon != null) const SizedBox(width: 8),
              Flexible(
                child: FittedBox(
                  child: Text(
                    text,
                    style: textStyle ?? AppStyles.textStyle18black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
