import 'package:flutter/material.dart';
import 'package:haya_care/core/constant/app_image.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/widget/custom_outlined_button.dart';
import 'package:haya_care/feature/Auth/login/ui/view/widget/custom_login_text_filed.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              CustomLoginTextFiled(),
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
