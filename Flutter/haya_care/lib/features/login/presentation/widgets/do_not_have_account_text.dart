import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:haya_care/core/routing/routes.dart';
import 'package:haya_care/core/theming/styles.dart';
import 'package:haya_care/core/helpers/extensions.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an account?',
              style: TextStyles.font16DarkerGreysSemiBold.copyWith(
                fontFamily: "PublicSans",
              ),
            ),
            TextSpan(
              text: ' Sign up',
              style: TextStyles.font16BlackSemiBold.copyWith(
                decoration: TextDecoration.underline,
                fontFamily: "PublicSans",
              ),
              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      context.pushReplacementNamed(Routes.patientSignupScreen);
                    },
            ),
          ],
        ),
      ),
    );
  }
}
