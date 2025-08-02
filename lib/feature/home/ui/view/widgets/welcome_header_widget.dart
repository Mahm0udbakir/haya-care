import 'package:flutter/material.dart';
import 'package:haya_care/core/theme/app_style.dart';

class WelcomeHeaderWidget extends StatelessWidget {
  final String userName;
  final String date;

  const WelcomeHeaderWidget({
    super.key,
    required this.userName,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Welcome, $userName',
          style: AppStyles.welcomeStyle,
        ),
        const SizedBox(height: 4),
        Text(
          date,
          style: AppStyles.dateStyle,
        ),
      ],
    );
  }
}
