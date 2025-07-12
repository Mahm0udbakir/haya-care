import 'package:flutter/material.dart';
import 'package:haya_care/core/theming/colors.dart';
import 'package:haya_care/core/theming/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsManager.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          textStyle: const TextStyle(fontSize: 16),
        ),
        child: Text(
          text,
          style: TextStyles.font16WhiteBold.copyWith(fontFamily: "PublicSans"),
        ),
      ),
    );
  }
}
