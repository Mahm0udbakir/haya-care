import 'package:flutter/material.dart';
import 'app_color.dart';

class AppStyles {
  static const TextStyle textStyle18black = TextStyle(
    fontSize: 18,
  );

  // Header styles
  static const TextStyle welcomeStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle dateStyle = TextStyle(
    fontSize: 14,
    color: AppColors.textSecondary,
  );

  // Profile card styles
  static const TextStyle nameStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle ageStyle = TextStyle(
    fontSize: 16,
    color: AppColors.textSecondary,
  );

  // Section header styles
  static const TextStyle sectionHeaderStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor,
  );

  // Appointment card styles
  static const TextStyle doctorNameStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle specialtyStyle = TextStyle(
    fontSize: 14,
    color: AppColors.textSecondary,
  );

  static const TextStyle appointmentDetailStyle = TextStyle(
    fontSize: 12,
    color: AppColors.textSecondary,
  );

  // Button styles
  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.white,
  );

  static const TextStyle cancelButtonTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.cancelColor,
  );

  // Quick action styles
  static const TextStyle quickActionStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );
}
