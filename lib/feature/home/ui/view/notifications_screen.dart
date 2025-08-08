import 'package:flutter/material.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/feature/home/ui/view/widgets/custom_notification_card.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New',
              style: theme.titleLarge,
            ),
            const SizedBox(height: 16),

            CustomNotificationCard(
              icon: Icons.calendar_today,
              title: 'Upcoming Appointment',
              description: 'You Have an appointment with Dr. Mona at 3:00 PM',
              time: '2 hours ago',
            ),

            const SizedBox(height: 12),

            CustomNotificationCard(
              icon: Icons.science,
              title: 'New lab results available',
              description: 'Your Lab Results are now available for review',
              time: '4 hours ago',
            ),

            const SizedBox(height: 32),

            // Earlier section
            Text(
              'Earlier',
              style: theme.titleLarge,
            ),
            const SizedBox(height: 16),

            CustomNotificationCard(
              icon: Icons.calendar_today,
              title: 'Check-up Reminder',
              description: 'Your next check-up is scheduled for August 15th',
              time: 'July 20',
            ),
          ],
        ),
      ),
    );
  }
}
