import 'package:flutter/material.dart';
import 'package:haya_care/core/constant/app_image.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/widget/custom_elevated_button.dart';
import 'package:haya_care/core/widget/custom_outlined_button.dart';

class CustomAppointmentCard extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String dateTime;
  final String location;
  final String textBotton;
  final String? doctorImageUrl;
  final String? completText;
  final String? missedText;
  final bool isAssetImage;
  final bool showCancelButton;
  final VoidCallback ontap;
  final VoidCallback? onCancel;

  const CustomAppointmentCard({
    super.key,
    required this.doctorName,
    required this.specialty,
    required this.dateTime,
    required this.location,
    this.doctorImageUrl,
    this.isAssetImage = true,
    this.showCancelButton = true,
    required this.ontap,
    this.onCancel,
    this.completText,
    this.missedText,
    required this.textBotton,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return IntrinsicHeight(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: AppColors.grayColor,
            width: 1,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: doctorImageUrl != null
                  ? isAssetImage
                      ? Image.asset(
                          doctorImageUrl!,
                          fit: BoxFit.fill,
                          width: 86,
                        )
                      : Image.network(
                          doctorImageUrl!,
                          fit: BoxFit.fill,
                          width: 86,
                        )
                  : Image.asset(
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
                  if (missedText != null) ...[
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        textAlign: TextAlign.start,
                        missedText!,
                        // style: AppStyles.sectionHeaderStyle
                        //     .copyWith(fontSize: 14, color: Colors.red),
                      ),
                    ),
                  ],
                  if (completText != null) ...[
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        textAlign: TextAlign.start,
                        completText!,
                        // style: AppStyles.sectionHeaderStyle.copyWith(
                        //   fontSize: 14,
                        // ),
                      ),
                    ),
                  ],
                  Text(
                    doctorName,
                    style: theme.titleLarge!
                        .copyWith(color: AppColors.primaryColor),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    specialty,
                    style: theme.titleMedium,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 16,
                        color: AppColors.textSecondary,
                      ),
                      const SizedBox(width: 2),
                      Text(
                        dateTime,
                        style: theme.bodySmall,
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        size: 16,
                        color: AppColors.textSecondary,
                      ),
                      Expanded(
                        child: Text(
                          location,
                          style: theme.bodySmall,
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
                          text: textBotton,
                          onPressed: ontap,
                          borderRadius: 8,
                          heigth: 40,
                        ),
                      ),
                      if (showCancelButton && onCancel != null) ...[
                        const SizedBox(width: 12),
                        Expanded(
                          child: CustomOutlinedButton(
                            text: 'Cancel',
                            onPressed: onCancel!,
                            borderColor: AppColors.cancelColor,
                            borderRadius: 8,
                            height: 40,
                          ),
                        ),
                      ]
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
