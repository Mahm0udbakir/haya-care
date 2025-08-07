import 'package:flutter/material.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/widget/custom_appointment_card.dart';

class AppointmentsScreen extends StatefulWidget {
  const AppointmentsScreen({super.key});

  @override
  State<AppointmentsScreen> createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Appointments',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          labelColor: AppColors.primaryColor,
          unselectedLabelColor: AppColors.textTertiary,
          indicatorColor: AppColors.primaryColor,
          indicatorWeight: 2,
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          tabs: const [
            Tab(text: 'Upcoming'),
            Tab(text: 'Past'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Upcoming Appointments Tab
          _buildUpcomingAppointments(),
          // Past Appointments Tab
          _buildPastAppointments(),
        ],
      ),
    );
  }

  Widget _buildUpcomingAppointments() {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 3,
      itemBuilder: (context, index) {
        return CustomAppointmentCard(
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
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 8);
      },
    );
  }

  Widget _buildPastAppointments() {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: 4,
      itemBuilder: (context, index) {
        return CustomAppointmentCard(
          doctorName: 'Dr. Ahmed Mohammed',
          specialty: 'Cardiologist',
          dateTime: 'Jan 28, 2025 • 2:30 PM',
          location: 'City Hospital',
          completText: 'Completed',
          ontap: () {
            Navigator.pushNamed(context, AppRoutes.appointmentDetailsRoute);
          },
          textBotton: 'View Details',
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 8);
      },
    );
  }
}
