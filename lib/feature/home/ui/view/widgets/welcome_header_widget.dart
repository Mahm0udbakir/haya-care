import 'package:flutter/material.dart';

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
    final testStyle = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Welcome, $userName',
          style: testStyle.titleLarge,
        ),
        const SizedBox(height: 4),
        Text(
          date,
          style: testStyle.bodyMedium,
        ),
      ],
    );
  }
}
