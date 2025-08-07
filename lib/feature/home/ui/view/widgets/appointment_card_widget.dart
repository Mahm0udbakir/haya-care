import 'package:flutter/material.dart';
import 'package:haya_care/core/constant/app_image.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/theme/app_style.dart';
import 'package:haya_care/core/widget/custom_elevated_button.dart';
import 'package:haya_care/core/widget/custom_outlined_button.dart';

class AppointmentCardWidget extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String dateTime;
  final String location;
  final String? doctorImageUrl;
  final VoidCallback onReschedule;
  final VoidCallback onCancel;

  const AppointmentCardWidget({
    super.key,
    required this.doctorName,
    required this.specialty,
    required this.dateTime,
    required this.location,
    this.doctorImageUrl,
    required this.onReschedule,
    required this.onCancel,
  });
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      // ده اللي هيخلي الصورة تاخد ارتفاع الكارد
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: AppColors.blackColor.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                AppImage.docdorImage,
                fit: BoxFit.fill,
                width: 86,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctorName,
                    style: AppStyles.doctorNameStyle,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    specialty,
                    style: AppStyles.specialtyStyle,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 16,
                        color: AppColors.textSecondary,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        dateTime,
                        style: AppStyles.appointmentDetailStyle,
                      ),
                      const SizedBox(width: 24),
                      Icon(
                        Icons.location_on_outlined,
                        size: 16,
                        color: AppColors.textSecondary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          location,
                          style: AppStyles.appointmentDetailStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: CustomElevatedButton(
                          text: 'Reschedule',
                          onPressed: onReschedule,
                          textStyle: AppStyles.buttonTextStyle,
                          borderRadius: 8,
                          heigth: 40,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: CustomOutlinedButton(
                          text: 'Cancel',
                          onPressed: onCancel,
                          textStyle: AppStyles.cancelButtonTextStyle,
                          borderColor: AppColors.cancelColor,
                          borderRadius: 8,
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
