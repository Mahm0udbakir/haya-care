import 'package:flutter/material.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/widget/custom_list_tile.dart';
import 'package:haya_care/core/widget/custom_switch_tile.dart';

class RemindersScreen extends StatelessWidget {
  RemindersScreen({super.key});
  final ValueNotifier<bool> _notificationsEnabled = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: Text('Reminders'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomSwitchTile(
              title: 'Reminders',
              switchValue: _notificationsEnabled,
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Appointment Reminders',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 8),
                CustomListTile(
                  icon: Icons.medical_services,
                  title: 'Appointment with Dr. Sara',
                  subtitle: 'Tomorrow at 3:00 PM',
                ),
                SizedBox(height: 8),
                CustomListTile(
                  icon: Icons.medical_services,
                  title: 'Follow up with Dr.Ahmed',
                  subtitle: 'Today at 3:00 PM',
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Reminder set 24 hours before ',
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.textPrimary,
              ),
            ),
            SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Medicine Reminders',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                ),
                SizedBox(height: 8),
                CustomListTile(
                  icon: Icons.medical_services,
                  title: 'Take Paracetamol',
                  subtitle: 'Tonight at 9:00 PM',
                ),
                SizedBox(height: 8),
                CustomListTile(
                  icon: Icons.medical_services,
                  title: 'Take Antibiotic',
                  subtitle: 'Tonight at 11:00 PM',
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Reminder set 1 hour before ',
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
