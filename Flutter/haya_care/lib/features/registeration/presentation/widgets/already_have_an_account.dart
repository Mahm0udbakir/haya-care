import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:haya_care/core/theming/styles.dart';



class AlreadyHaveAnAccountText extends StatelessWidget {
  const AlreadyHaveAnAccountText({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Already have an Account?',
              style: TextStyles.font16DarkerGreysSemiBold.copyWith(
                fontFamily: "PublicSans",
              ),
            ),
            TextSpan(
              text: 'Log In',
              style: TextStyles.font16BlackSemiBold.copyWith(
                decoration: TextDecoration.underline,
                fontFamily: "PublicSans",
              ),
              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      tabController.animateTo(0);
                    },
            ),
          ],
        ),
      ),
    );
  }
}
