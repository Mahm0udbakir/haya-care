import 'package:flutter/material.dart';
import 'package:haya_care/core/constant/app_image.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/widget/custom_outlined_button.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/feature/Auth/sign_in/ui/view/widget/custom_sign_in_text_filed.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSignInTextFiled(),
              const SizedBox(height: 8),
              Align(
                alignment: Alignment.center,
                child: Text(
                  '-------- or continue with --------',
                  style: theme.bodyMedium,
                ),
              ),
              const SizedBox(height: 8),
              CustomOutlinedButton(
                  textStyle: theme.titleLarge,
                  icon: Image.asset(AppImage.googleImage),
                  text: 'Continue with Google',
                  onPressed: () {}),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t  have an an account?', style: theme.titleLarge),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, AppRoutes.signInRoute);
                    },
                    child: Text('Sign Up',
                        style: theme.titleLarge!
                            .copyWith(color: AppColors.primaryColor)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
