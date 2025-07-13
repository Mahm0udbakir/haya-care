import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_text_styles.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({
    super.key,
    required this.textController,
    required this.labelText,
    this.isObscure,
    this.keyboardType,
    required this.validator,
    this.suffixIcon,
  });

  final TextEditingController textController;
  final String labelText;
  final bool? isObscure;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String? Function(String? value) validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0.w),
            child: Text(
              labelText,
              style: AppTextStyles.font24Bold(context),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0x0f282828),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: TextFormField(
              keyboardType: keyboardType,
              obscureText: isObscure ?? false,
              controller: textController,
              decoration: InputDecoration(
                hintText: labelText,
                hintStyle: const TextStyle(color: Colors.black12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(color: Colors.blue),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: const BorderSide(color: Colors.red),
                ),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                suffixIcon: suffixIcon,
              ),
              validator: validator,
            ),
          ),
        ],
      ),
    );
  }
}
