import 'package:flutter/material.dart';
import 'package:haya_care/core/constant/app_image.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/feature/Auth/ui/view/widget/custom_welcome_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Welcome To Haya Care',
                  style: theme.titleLarge!
                      .copyWith(color: AppColors.primaryColor, fontSize: 32),
                ),
                const SizedBox(height: 50),
                Image.asset(
                  AppImage.welcomeLogoImage,
                  width: 115,
                  height: 115,
                ),
              ],
            ),
            const SizedBox(height: 32),
            Text('Continue as ',
                style:
                    theme.titleLarge!.copyWith(color: AppColors.primaryColor)),
            SizedBox(height: 24),
            CustomWelcomeWidget(
              userType: 'Doctor',
              userDescription:
                  'Book appointments, view medical history, and connect with your healthcare providers.',
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.registrationRoute);
              },
            ),
            const SizedBox(height: 24),
            CustomWelcomeWidget(
              userType: 'Patient',
              userDescription:
                  'Book appointments, view medical history, and connect with your healthcare providers.',
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.registrationRoute);
              },
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an an account?', style: theme.titleLarge),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(AppRoutes.loginInRoute);
                  },
                  child: Text('Login',
                      style: theme.titleLarge!
                          .copyWith(color: AppColors.primaryColor)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
