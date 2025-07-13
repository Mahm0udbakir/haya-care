import 'package:flutter/material.dart';
import 'package:haya_care/core/theming/colors.dart';
import 'package:haya_care/core/theming/styles.dart';
import 'package:haya_care/core/helpers/spacing.dart';

class OrContinueWithGoogle extends StatelessWidget {
  const OrContinueWithGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Divider(color: ColorsManager.black)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "or continue with",
                style: TextStyles.font14BlackRegular,
              ),
            ),
            Expanded(child: Divider(color: ColorsManager.black)),
          ],
        ),

        verticalSpace(16),

        OutlinedButton.icon(
          onPressed: () {},
          icon: Image.asset('assets/images/google.png', height: 20),
          label: Text(
            "Continue with Google",
            style: TextStyles.font16BlackBold,
          ),
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: ColorsManager.primaryColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            minimumSize: const Size(double.infinity, 48),
          ),
        ),
      ],
    );
  }
}
