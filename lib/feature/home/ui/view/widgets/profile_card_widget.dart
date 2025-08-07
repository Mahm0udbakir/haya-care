import 'package:flutter/material.dart';
import 'package:haya_care/core/constant/app_image.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/theme/app_style.dart';
import 'package:haya_care/core/widget/custom_elevated_button.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                    style: AppStyles.nameStyle,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Age: 32',
                    style: AppStyles.ageStyle,
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
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
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
          textStyle: AppStyles.buttonTextStyle,
          borderRadius: 8,
          heigth: 40,
        ),
      ],
    );
  }
}
