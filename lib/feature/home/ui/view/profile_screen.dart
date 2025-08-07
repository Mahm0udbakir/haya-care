import 'package:flutter/material.dart';
import 'package:haya_care/core/constant/app_image.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/widget/custom_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textPrimary),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Profile',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Personal Information',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      Text(
                        'Rowan Ahmed',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      Text(
                        'Age: 34, Female',
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      fit: BoxFit.cover,
                      AppImage.prefile2Image,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 41),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 8),
                  CustomListTile(
                    padding: 12.5,
                    radius: 8,
                    icon: Icons.email,
                    title: 'Email',
                    subtitle: 'sophia.carter@email.com',
                  ),
                  SizedBox(height: 8),
                  CustomListTile(
                    padding: 12.5,
                    radius: 8,
                    icon: Icons.phone,
                    title: 'Phone',
                    subtitle: '01114569456',
                  ),
                  SizedBox(height: 8),
                  CustomListTile(
                    padding: 12.5,
                    radius: 8,
                    icon: Icons.calculate,
                    title: 'Insurance',
                    subtitle: 'United Health',
                  ),
                ],
              ),
              SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Health Data',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 8),
                  CustomListTile(
                    padding: 12.5,
                    radius: 8,
                    icon: Icons.medical_services,
                    title: 'Blood Type',
                    subtitle: 'O+',
                  ),
                  SizedBox(height: 8),
                  CustomListTile(
                    padding: 12.5,
                    radius: 8,
                    icon: Icons.medical_services,
                    title: 'Height & Weight',
                    subtitle: '170 cm, 65 kg',
                  ),
                  SizedBox(height: 8),
                  CustomListTile(
                    padding: 12.5,
                    radius: 8,
                    icon: Icons.medical_services,
                    title: 'BMI',
                    subtitle: '22.5',
                  ),
                  SizedBox(height: 8),
                  CustomListTile(
                    padding: 12.5,
                    radius: 8,
                    icon: Icons.medical_services,
                    title: 'Allergies',
                    subtitle: 'Penicillin, Nuts',
                  ),
                  SizedBox(height: 8),
                  CustomListTile(
                    padding: 12.5,
                    radius: 8,
                    icon: Icons.medical_services,
                    title: 'Chronic Conditions',
                    subtitle: 'None',
                  ),
                  SizedBox(height: 8),
                  CustomListTile(
                    padding: 12.5,
                    radius: 8,
                    icon: Icons.medical_services,
                    title: 'Smoking/Alcohol',
                    subtitle: 'Non-smoker, Occasional',
                  ),
                  SizedBox(height: 8),
                  CustomListTile(
                    padding: 12.5,
                    radius: 8,
                    icon: Icons.medical_services,
                    title: 'Vaccination History',
                    subtitle: 'Up to date',
                  ),
                ],
              ),
              SizedBox(height: 24),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Medical History',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 8),
                CustomListTile(
                  padding: 12.5,
                  radius: 8,
                  icon: Icons.medical_services,
                  title: 'Previous Diagnoses',
                  subtitle: 'Appendicitis (2010, Dr. Smith)',
                ),
                SizedBox(height: 8),
                CustomListTile(
                  padding: 12.5,
                  radius: 8,
                  icon: Icons.medical_services,
                  title: 'Surgeries/Procedures',
                  subtitle: 'Appendectomy (2010)',
                ),
                SizedBox(height: 8),
                CustomListTile(
                  padding: 12.5,
                  radius: 8,
                  icon: Icons.medical_services,
                  title: 'Hospital Admissions',
                  subtitle: 'None',
                ),
                SizedBox(height: 8),
                CustomListTile(
                  padding: 12.5,
                  radius: 8,
                  icon: Icons.medical_services,
                  title: 'Family History',
                  subtitle: 'Penicillin, Nuts',
                ),
              ]),
              SizedBox(height: 24),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Prescriptions',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 8),
                CustomListTile(
                  padding: 12.5,
                  radius: 8,
                  icon: Icons.medical_services,
                  title: 'Prescription History',
                  subtitle: 'Prescription History',
                ),
              ]),
              SizedBox(height: 24),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Lab Results',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 8),
                CustomListTile(
                  padding: 12.5,
                  radius: 8,
                  icon: Icons.medical_services,
                  title: 'Lab Results',
                  subtitle: 'Blood Test (2024-07-10, Completed)',
                ),
              ]),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
