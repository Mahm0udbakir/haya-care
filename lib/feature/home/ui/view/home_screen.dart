import 'package:flutter/material.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/theme/app_style.dart';

import 'package:haya_care/feature/home/ui/view/widgets/appointment_card_widget.dart';
import 'package:haya_care/feature/home/ui/view/widgets/profile_card_widget.dart';
import 'package:haya_care/feature/home/ui/view/widgets/quick_actions_widget.dart';
import 'package:haya_care/feature/home/ui/view/widgets/welcome_header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Header
              const WelcomeHeaderWidget(
                userName: 'Rowan',
                date: 'January 15, 2025',
              ),

              const SizedBox(height: 24),

              // Profile Card
              ProfileCardWidget(),

              const SizedBox(height: 32),

              // Next Appointment Section
              Text(
                'Next Appointment',
                style: AppStyles.sectionHeaderStyle,
              ),

              const SizedBox(height: 16),

              AppointmentCardWidget(
                doctorName: 'Dr. Ahmed Mohammed',
                specialty: 'Cardiologist',
                dateTime: 'Jan 28, 2025 • 2:30 PM',
                location: 'City Hospital',
                onReschedule: () {
                  // TODO: Handle reschedule
                },
                onCancel: () {
                  // TODO: Handle cancel
                },
              ),

              const SizedBox(height: 32),

              Text(
                'Quick Actions',
                style: AppStyles.sectionHeaderStyle,
              ),

              const SizedBox(height: 16),
             
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  QuickActionCard(
                    title: 'Book\nAppointment',
                    icon: Icons.calendar_today,
                    onTap: () {
                      // Navigator.pushNamed(context, AppRoutes.bookAppointment);
                    },
                  ),
                  QuickActionCard(
                    title: 'View Medical\nProfile',
                    icon: Icons.person,
                    onTap: () {
                      // Navigator.pushNamed(context, AppRoutes.medicalProfile);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  QuickActionCard(
                    title: 'Reminders',
                    icon: Icons.notifications,
                    onTap: () {
                      // Navigator.pushNamed(context, AppRoutes.reminders);
                    },
                  ),
                  QuickActionCard(
                    title: 'Notifications',
                    icon: Icons.notifications_active,
                    onTap: () {
                      // Navigator.pushNamed(context, AppRoutes.notifications);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
