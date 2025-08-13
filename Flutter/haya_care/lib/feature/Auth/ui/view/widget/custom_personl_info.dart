import 'package:flutter/material.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/feature/Auth/ui/view/widget/custom_personal_form_filed.dart';

class CustomPersonlInfo extends StatelessWidget {
  const CustomPersonlInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Please provide your personal information to get started',
              style: textTheme.bodyMedium,
            ),
            const SizedBox(height: 32),
            const CircleAvatar(
              radius: 40,
              backgroundColor: AppColors.grayColor2,
              child: Icon(Icons.camera_alt),
            ),
            const SizedBox(height: 8),
            Text('Add Profile Photo', style: textTheme.bodyMedium),
            const SizedBox(height: 16),
            CustomPersonalFormFiled(),
          ],
        ),
      ],
    );
  }
}
