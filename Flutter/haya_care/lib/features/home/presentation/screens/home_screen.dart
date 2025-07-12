import 'package:flutter/material.dart';
import 'package:haya_care/core/routing/routes.dart';
import 'package:haya_care/core/theming/colors.dart';
import 'package:haya_care/core/helpers/spacing.dart';
import 'package:haya_care/core/helpers/extensions.dart';
import 'package:haya_care/features/home/presentation/screens/widgets/option_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  'Welcome To Haya Care',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: ColorsManager.primaryColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              verticalSpace(30),

              Center(child: Image.asset('assets/images/logo.png', height: 100)),
              const SizedBox(height: 30),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Continue as',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: ColorsManager.primaryColor,
                  ),
                ),
              ),
              verticalSpace(20),

              OptionCard(
                onTap: () {
                  context.pushReplacementNamed(Routes.doctorLoginScreen);
                },
                title: 'Doctor',
                description:
                    'Access patient records, manage appointments, and communicate securely.',
                imagePath: 'assets/images/doctor.png',
              ),
              const SizedBox(height: 20),
              OptionCard(
                onTap: () {
                  context.pushReplacementNamed(Routes.patientLoginScreen);
                },
                title: 'Patient',
                description:
                    'Book appointments, view medical history, and connect with your healthcare providers.',
                imagePath: 'assets/images/patient.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
