import 'package:flutter/material.dart';
import 'package:haya_care/core/theme/app_color.dart';

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final double padding;
  final double radius;

  const CustomListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.padding = 24,
    this.radius = 16,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          color: AppColors.grayColor,
          width: 1,
        ),
      ),
      child: ListTile(
        minTileHeight: 0,
        contentPadding: EdgeInsets.zero,
        leading: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        title: Text(title, style: theme.titleLarge),
        subtitle: Text(subtitle, style: theme.titleMedium),
      ),
    );
  }
}
