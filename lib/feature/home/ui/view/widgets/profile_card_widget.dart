import 'package:flutter/material.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/theme/app_style.dart';
import 'package:haya_care/core/widget/custom_elevated_button.dart';

class ProfileCardWidget extends StatelessWidget {
  final String userName;
  final int age;
  final String? avatarUrl;
  final int notificationCount;
  final VoidCallback onViewProfile;
  final VoidCallback onNotificationTap;

  const ProfileCardWidget({
    super.key,
    required this.userName,
    required this.age,
    this.avatarUrl,
    required this.notificationCount,
    required this.onViewProfile,
    required this.onNotificationTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage:
                    avatarUrl != null ? NetworkImage(avatarUrl!) : null,
                backgroundColor: AppColors.backgroundColor,
                child: avatarUrl == null
                    ? Icon(
                        Icons.person,
                        size: 40,
                        color: AppColors.textSecondary,
                      )
                    : null,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: AppStyles.nameStyle,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Age: $age',
                      style: AppStyles.ageStyle,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: onNotificationTap,
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Icon(
                        Icons.notifications_outlined,
                        color: AppColors.textSecondary,
                        size: 24,
                      ),
                    ),
                    if (notificationCount > 0)
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: AppColors.notificationBadge,
                            shape: BoxShape.circle,
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 20,
                            minHeight: 20,
                          ),
                          child: Text(
                            notificationCount.toString(),
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
          const SizedBox(height: 20),
          CustomElevatedButton(
            text: 'View Profile',
            onPressed: onViewProfile,
            textStyle: AppStyles.buttonTextStyle,
            borderRadius: 25,
            heigth: 50,
          ),
        ],
      ),
    );
  }
}
