import 'package:flutter/material.dart';
import 'package:haya_care/core/constant/app_image.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/widget/custom_elevated_button.dart';

class ProfileCardHomeWidget extends StatelessWidget {
  const ProfileCardHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                fit: BoxFit.cover,
                AppImage.prefile2Image,
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rowan Ahmed',
                    style: theme.textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Age: 32',
                    style: theme.textTheme.titleMedium,
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.notifications_outlined,
                      color: AppColors.textSecondary,
                      size: 30,
                    ),
                  ),
                  if (3 > 0)
                    Positioned(
                      right: 7,
                      top: 2,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: AppColors.notificationBadge,
                          shape: BoxShape.circle,
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 15,
                          minHeight: 15,
                        ),
                        child: Text(
                          '3',
                          style: theme.textTheme.titleSmall,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 14),
        CustomElevatedButton(
          text: 'View Profile',
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.profileRoute);
          },
          borderRadius: 8,
          heigth: 40,
        ),
      ],
    );
  }
}
