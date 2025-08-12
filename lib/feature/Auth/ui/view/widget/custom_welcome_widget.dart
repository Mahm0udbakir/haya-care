
import 'package:flutter/material.dart';
import 'package:haya_care/core/constant/app_image.dart';
import 'package:haya_care/core/theme/app_color.dart';

class CustomWelcomeWidget extends StatelessWidget {
  final String userType;
  final String userDescription;
 final void Function() onTap;
  const CustomWelcomeWidget(
      {super.key, required this.userType, required this.userDescription,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(24),
            color: AppColors.backgroundcardColor),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(userType, style: Theme.of(context).textTheme.bodyLarge),
                  const SizedBox(height: 8),
                  Text(userDescription,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
            const SizedBox(width: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                AppImage.docdorImage,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
