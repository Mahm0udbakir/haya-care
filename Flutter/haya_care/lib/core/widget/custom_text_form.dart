import 'package:flutter/material.dart';
import 'package:haya_care/core/theme/app_color.dart';

class CustomTextForm extends StatelessWidget {
  final String hintText;
  final TextAlign? textAlign;
  final String? initialValue;
  final bool? isValidator;
  final bool? isObscureText;
  final bool? isReadOnly;
  final EdgeInsetsGeometry? contentPadding;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final TextStyle? hintStyle;
  final TextStyle? style;
  final Color? cursorColor;
  final Color? cursorErrorColor;
  final Color? hoverColor;
  final Color? fillColor;
  final Color? colorEnableBorder;
  final Color? disabledBorderColor;
  final FormFieldValidator<String>? validator;
  final FocusNode? focusNode;
  final FocusNode? nextFocusNode;
  final int? maxLines;
  final ValueChanged<String>? onChanged;
  final Key? valueKey;
  final VoidCallback? onTap;
  final String? apiError;
  final BorderRadius borderRadius;

  const CustomTextForm({
    super.key,
    required this.hintText,
    this.contentPadding,
    this.isObscureText,
    this.style,
    this.suffixIcon,
    this.prefixIcon,
    this.controller,
    this.keyboardType,
    this.validator,
    this.cursorColor,
    this.cursorErrorColor,
    this.hoverColor,
    this.fillColor,
    this.focusNode,
    this.nextFocusNode,
    this.colorEnableBorder,
    this.maxLines,
    this.onChanged,
    this.valueKey,
    this.isReadOnly,
    this.disabledBorderColor,
    this.initialValue,
    this.onTap,
    this.textAlign,
    this.isValidator,
    this.apiError,
    this.hintStyle,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
  });
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return TextFormField(
      key: valueKey,
      initialValue: initialValue,
      readOnly: isReadOnly ?? false,
      onTap: onTap,
      onFieldSubmitted: (value) =>
          FocusScope.of(context).requestFocus(nextFocusNode),
      focusNode: focusNode,
      onChanged: onChanged,
      maxLines: maxLines ?? 1,
      textAlign: textAlign ?? TextAlign.start,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle ??
            theme.bodyLarge!.copyWith(
              color: AppColors.hintTextColor,
            ),
        isDense: true,
        contentPadding: contentPadding ?? const EdgeInsets.all(14),
        suffixIcon: suffixIcon,
        suffixIconConstraints: const BoxConstraints(minWidth: 14, minHeight: 8),
        hoverColor: hoverColor,
        filled: true,
        fillColor: fillColor ?? AppColors.backgroundcardColor,
        alignLabelWithHint: true,
        prefixIcon: prefixIcon,
        errorText: apiError,
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          // borderSide: BorderSide(
          //   color: AppColors.backgroundColor,
          // ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(
            color: colorEnableBorder ?? AppColors.backgroundColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: const BorderSide(
            color: AppColors.cancelColor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: const BorderSide(
            color: AppColors.cancelColor,
          ),
        ),
      ),
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.text,
      style: style,
      obscureText: isObscureText ?? false,
      cursorColor: cursorColor ?? AppColors.primaryColor,
      cursorErrorColor: cursorErrorColor ?? AppColors.cancelColor,
      validator: isValidator ?? true
          ? (value) {
              if (value == null || value.isEmpty) {
                return '$hintText مطلوب';
              }
              return null;
            }
          : null,
    );
  }
}
