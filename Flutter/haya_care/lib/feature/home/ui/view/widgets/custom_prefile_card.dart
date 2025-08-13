import 'package:flutter/material.dart';
import 'package:haya_care/core/constant/app_image.dart';

class CustomProfileCard extends StatelessWidget {
  const CustomProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Personal Information',
              style: theme.titleLarge,
            ),
            Text(
              'Rowan Ahmed',
              style: theme.titleLarge,
            ),
            Text(
              'Age: 34, Female',
              style: theme.titleMedium,
            ),
          ],
        ),
        Spacer(),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            fit: BoxFit.cover,
            AppImage.prefile2Image,
            width: 100,
            height: 100,
          ),
        ),
      ],
    );
  }
}
