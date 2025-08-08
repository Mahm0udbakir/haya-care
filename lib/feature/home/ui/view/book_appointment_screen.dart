import 'package:flutter/material.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/widget/custom_elevated_button.dart';
import 'package:haya_care/core/widget/custom_list_tile.dart';

class BookAppointmentScreen extends StatelessWidget {
  const BookAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Book Appointment',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Doctor Weekly Availability',
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
              title: 'Monday',
              subtitle: '9:00 AM - 12:00 PM, 1:00 PM - 5:00 PM',
            ),
            SizedBox(height: 8),
            CustomListTile(
              padding: 12.5,
              radius: 8,
              icon: Icons.phone,
              title: 'Tuesday',
              subtitle: '9:00 AM - 12:00 PM, 1:00 PM - 5:00 PM',
            ),
            SizedBox(height: 8),
            CustomListTile(
              padding: 12.5,
              radius: 8,
              icon: Icons.calculate,
              title: 'Wednesday',
              subtitle: '9:00 AM - 12:00 PM, 1:00 PM - 5:00 PM',
            ),
            SizedBox(height: 8),
            CustomListTile(
              padding: 12.5,
              radius: 8,
              icon: Icons.calculate,
              title: 'Thursday',
              subtitle: '9:00 AM - 12:00 PM, 1:00 PM - 5:00 PM',
            ),
            SizedBox(height: 8),
            CustomListTile(
              padding: 12.5,
              radius: 8,
              icon: Icons.calculate,
              title: 'Friday',
              subtitle: '9:00 AM - 12:00 PM, 1:00 PM - 5:00 PM',
            ),
            SizedBox(
              height: 40,
            ),
            CustomElevatedButton(
                text: 'Book Appointment',
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppRoutes.appointmentDetailsRoute);
                })
          ],
        ),
      ),
    );
  }
}
