import 'package:flutter/material.dart';
import 'package:haya_care/core/theme/app_color.dart';

/// Generic button widget
class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double? heigth;
  final double? width;
  final double? borderRadius;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? overlayColor;
  final TextStyle? textStyle;
  final Widget? icon;
  final TextDirection? textDirection;
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.heigth,
    this.backgroundColor,
    this.borderRadius,
    this.textStyle,
    this.icon,
    this.borderColor,
    this.overlayColor,
    this.textDirection,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Directionality(
      textDirection: textDirection ?? TextDirection.ltr,
      child: SizedBox(
        width: width ?? double.infinity,
        height: heigth ?? 50,
        child: ElevatedButton.icon(
          onPressed: onPressed,
          icon: icon,
          iconAlignment: IconAlignment.start,
          style: OutlinedButton.styleFrom(
            shadowColor: Colors.transparent,
            overlayColor: overlayColor ?? AppColors.primaryColor,
            side: BorderSide(color: borderColor ?? Colors.transparent),
            backgroundColor: backgroundColor ?? AppColors.primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
            ),
          ),
          label: FittedBox(
            child: Text(
              text,
              style: textStyle ?? textTheme.titleSmall,
            ),
          ),
        ),
      ),
    );
  }
}
