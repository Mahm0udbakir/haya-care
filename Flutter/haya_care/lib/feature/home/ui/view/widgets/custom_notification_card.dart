import 'package:flutter/material.dart';
import 'package:haya_care/core/theme/app_color.dart';

class CustomNotificationCard extends StatelessWidget {
  const CustomNotificationCard(
      {super.key,
      required this.icon,
      required this.title,
      required this.description,
      required this.time});
  final IconData icon;
  final String title;
  final String description;
  final String time;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.cardColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.grayColor,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          // Icon container
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: AppColors.primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: AppColors.primaryColor,
              size: 20,
            ),
          ),

          const SizedBox(width: 12),

          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: theme.titleLarge),
                Text(description, style: theme.titleMedium),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(time, style: theme.bodySmall),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
