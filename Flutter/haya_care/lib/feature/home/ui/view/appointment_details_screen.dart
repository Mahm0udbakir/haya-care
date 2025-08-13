import 'package:flutter/material.dart';
import 'package:haya_care/core/constant/app_image.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/widget/custom_list_tile.dart';

class AppointmentDetailsScreen extends StatelessWidget {
  const AppointmentDetailsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Appointment Details',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Doctor Information Section
              Container(
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: AppColors.grayColor,
                    width: 1,
                  ),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    // Doctor Image
                    Container(
                      width: 85,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.backgroundColor,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          AppImage.docdorImage,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              color: AppColors.backgroundColor,
                              child: const Icon(
                                Icons.person,
                                color: AppColors.textTertiary,
                                size: 40,
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    const SizedBox(width: 16),

                    // Doctor Info
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Dr.Mona Mohammed',
                              style: theme.titleLarge!
                                  .copyWith(color: AppColors.primaryColor)),
                          const SizedBox(height: 16),
                          Text('Cardiologist', style: theme.titleMedium),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Appointment Information Section
              Text('Appointment Information', style: theme.titleLarge),
              SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: AppColors.grayColor,
                    width: 1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Date & time : July 15, 2025 at 10:00 AM',
                      style: theme.titleMedium,
                    ),
                    const SizedBox(height: 4),
                    Text('Status: Completed', style: theme.titleMedium),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // Appointment Information Section
              Text('Visit Summary', style: theme.titleLarge),
              SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: AppColors.grayColor,
                    width: 1,
                  ),
                ),
                child: Text(
                  textAlign: TextAlign.justify,
                  'Discussed recent chest pains and conducted an EKG. Results were normal, but advised to monitor symptoms and schedule a follow-up if they persist.',
                  style: theme.titleMedium,
                ),
              ),
              SizedBox(height: 24),
              // Appointment Information Section
              Text('Prescriptions', style: theme.titleLarge),
              SizedBox(height: 8),
              CustomListTile(
                icon: Icons.medical_services,
                title: 'Lisinopril',
                subtitle: '10mg, once daily',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
