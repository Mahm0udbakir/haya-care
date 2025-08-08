import 'package:flutter/material.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/widget/custom_appointment_card.dart';
import 'package:haya_care/feature/home/ui/view/widgets/profile_card_home_widget.dart';
import 'package:haya_care/feature/home/ui/view/widgets/custom_quick_action_card.dart';
import 'package:haya_care/feature/home/ui/view/widgets/welcome_header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
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
              ProfileCardHomeWidget(),

              const SizedBox(height: 32),

              // Next Appointment Section
              Text(
                'Next Appointment',
                style:
                    theme.titleLarge!.copyWith(color: AppColors.primaryColor),
              ),

              const SizedBox(height: 16),

              CustomAppointmentCard(
                doctorName: 'Dr. Ahmed Mohammed',
                specialty: 'Cardiologist',
                dateTime: 'Jan 28, 2025 • 2:30 PM',
                location: 'City Hospital',
                ontap: () {
                  // TODO: Handle reschedule
                },
                onCancel: () {
                  // TODO: Handle cancel
                },
                textBotton: 'Reschedule',
              ),

              const SizedBox(height: 32),

              Text(
                'Quick Actions',
                style:
                    theme.titleLarge!.copyWith(color: AppColors.primaryColor),
              ),

              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomQuickActionCard(
                    title: 'Book\nAppointment',
                    icon: Icons.calendar_today,
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        AppRoutes.bookAppointmentRoute,
                      );
                    },
                  ),
                  CustomQuickActionCard(
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
                  CustomQuickActionCard(
                    title: 'Reminders',
                    icon: Icons.notifications,
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.remindersRoute);
                    },
                  ),
                  CustomQuickActionCard(
                    title: 'Notifications',
                    icon: Icons.notifications_active,
                    onTap: () {
                      Navigator.pushNamed(
                          context, AppRoutes.notificationsRoute);
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
