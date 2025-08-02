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
          padding: const EdgeInsets.all(20),
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
              ProfileCardWidget(
                userName: 'Rowan Ahmed',
                age: 32,
                notificationCount: 3,
                onViewProfile: () {
                  // TODO: Navigate to profile
                },
                onNotificationTap: () {
                  // TODO: Show notifications
                },
              ),

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

              // Quick Actions Section
              Text(
                'Quick Actions',
                style: AppStyles.sectionHeaderStyle,
              ),

              const SizedBox(height: 16),

              QuickActionsWidget(
                actions: [
                  QuickActionItem(
                    title: 'Book\nAppointment',
                    icon: Icons.calendar_today,
                    onTap: () {
                      // TODO: Navigate to book appointment
                    },
                  ),
                  QuickActionItem(
                    title: 'View Medical\nProfile',
                    icon: Icons.person,
                    onTap: () {
                      // TODO: Navigate to medical profile
                    },
                  ),
                  QuickActionItem(
                    title: 'Reminders',
                    icon: Icons.notifications,
                    onTap: () {
                      // TODO: Navigate to reminders
                    },
                  ),
                  QuickActionItem(
                    title: 'Notifications',
                    icon: Icons.notifications_active,
                    onTap: () {
                      // TODO: Navigate to notifications
                    },
                  ),
                ],
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
