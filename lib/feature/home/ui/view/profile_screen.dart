import 'package:flutter/material.dart';
import 'package:haya_care/core/widget/custom_list_tile.dart';
import 'package:haya_care/feature/home/ui/view/widgets/custom_prefile_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            children: [
              CustomProfileCard(),
              SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contact', style: theme.titleLarge),
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
                  Text('Health Data', style: theme.titleLarge),
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
                Text('Medical History', style: theme.titleLarge),
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
                Text('Prescriptions', style: theme.titleLarge),
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
                Text('Lab Results', style: theme.titleLarge),
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
