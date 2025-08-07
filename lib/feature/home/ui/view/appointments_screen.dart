import 'package:flutter/material.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/theme/app_style.dart';
import 'package:haya_care/core/widget/custom_elevated_button.dart';
import 'package:haya_care/core/widget/confirmation_dialog.dart';
import 'appointment_details_screen.dart';

class AppointmentsScreen extends StatefulWidget {
  const AppointmentsScreen({super.key});

  @override
  State<AppointmentsScreen> createState() => _AppointmentsScreenState();
}

class _AppointmentsScreenState extends State<AppointmentsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<AppointmentData> _upcomingAppointments = [
    AppointmentData(
      doctorName: 'Dr. Ahmed Mohammed',
      specialty: 'Cardiologist',
      date: 'Jan 28, 2025',
      time: '2:30 PM',
      location: 'City Hospital',
      imageUrl: 'assets/img/doctor1.jpg',
      status: AppointmentStatus.upcoming,
    ),
    AppointmentData(
      doctorName: 'Dr. Mona Mohammed',
      specialty: 'Dentist',
      date: 'Jan 30, 2025',
      time: '2:30 PM',
      location: 'City Hospital',
      imageUrl: 'assets/img/doctor2.jpg',
      status: AppointmentStatus.upcoming,
    ),
  ];

  final List<AppointmentData> _pastAppointments = [
    AppointmentData(
      doctorName: 'Dr. Maha Mohammed',
      specialty: 'Cardiologist',
      date: 'Jan 28, 2025',
      time: '2:30 PM',
      location: 'City Hospital',
      imageUrl: 'assets/img/doctor3.jpg',
      status: AppointmentStatus.missed,
    ),
    AppointmentData(
      doctorName: 'Dr. Ahmed Mohammed',
      specialty: 'Cardiologist',
      date: 'Jan 28, 2025',
      time: '2:30 PM',
      location: 'City Hospital',
      imageUrl: 'assets/img/doctor1.jpg',
      status: AppointmentStatus.completed,
    ),
    AppointmentData(
      doctorName: 'Dr. Mona Mohammed',
      specialty: 'Cardiologist',
      date: 'Jan 28, 2025',
      time: '2:30 PM',
      location: 'City Hospital',
      imageUrl: 'assets/img/doctor2.jpg',
      status: AppointmentStatus.completed,
    ),
  ];

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
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _upcomingAppointments.length,
      itemBuilder: (context, index) {
        return UpcomingAppointmentCard(
          appointment: _upcomingAppointments[index],
        );
      },
    );
  }

  Widget _buildPastAppointments() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _pastAppointments.length,
      itemBuilder: (context, index) {
        return PastAppointmentCard(
          appointment: _pastAppointments[index],
        );
      },
    );
  }
}

enum AppointmentStatus { upcoming, completed, missed, cancelled }

class AppointmentData {
  final String doctorName;
  final String specialty;
  final String date;
  final String time;
  final String location;
  final String imageUrl;
  final AppointmentStatus status;

  AppointmentData({
    required this.doctorName,
    required this.specialty,
    required this.date,
    required this.time,
    required this.location,
    required this.imageUrl,
    required this.status,
  });
}

class UpcomingAppointmentCard extends StatelessWidget {
  final AppointmentData appointment;

  const UpcomingAppointmentCard({super.key, required this.appointment});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              // Doctor Image
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.backgroundColor,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    appointment.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: AppColors.backgroundColor,
                        child: const Icon(
                          Icons.person,
                          color: AppColors.textTertiary,
                          size: 30,
                        ),
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(width: 12),

              // Doctor Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      appointment.doctorName,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryColor,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      appointment.specialty,
                      style: AppStyles.specialtyStyle,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.access_time,
                          color: AppColors.textSecondary,
                          size: 14,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${appointment.date} • ${appointment.time}',
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: AppColors.textSecondary,
                          size: 14,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          appointment.location,
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Action Buttons
          Row(
            children: [
              Expanded(
                child: CustomElevatedButton(
                  text: 'Reschedule',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Rescheduling appointment...')),
                    );
                  },
                  textStyle: AppStyles.buttonTextStyle,
                  borderRadius: 8,
                  heigth: 40,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: OutlinedButton(
                  onPressed: () async {
                    final result = await ConfirmationDialog.show(
                      context: context,
                      title: 'Are you sure you want to Cancel Appointment?',
                      confirmText: 'No',
                      cancelText: 'Yes',
                      confirmButtonColor: AppColors.primaryColor,
                      cancelButtonColor: AppColors.primaryColor,
                    );

                    if (result == false && context.mounted) {
                      // User clicked "Yes" (cancel text)
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Appointment cancelled successfully'),
                          backgroundColor: AppColors.cancelColor,
                        ),
                      );
                    }
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.cancelColor,
                    side: const BorderSide(color: AppColors.cancelColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 8),
                  ),
                  child: const Text(
                    'Cancel',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class PastAppointmentCard extends StatelessWidget {
  final AppointmentData appointment;

  const PastAppointmentCard({super.key, required this.appointment});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              // Doctor Image
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.backgroundColor,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    appointment.imageUrl,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: AppColors.backgroundColor,
                        child: const Icon(
                          Icons.person,
                          color: AppColors.textTertiary,
                          size: 30,
                        ),
                      );
                    },
                  ),
                ),
              ),

              const SizedBox(width: 12),

              // Doctor Info
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            appointment.doctorName,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: _getStatusColor(appointment.status),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            _getStatusText(appointment.status),
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      appointment.specialty,
                      style: AppStyles.specialtyStyle,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.access_time,
                          color: AppColors.textSecondary,
                          size: 14,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${appointment.date} • ${appointment.time}',
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: AppColors.textSecondary,
                          size: 14,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          appointment.location,
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // View Details Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                final appointmentDetailsData = AppointmentDetailsData(
                  doctorName: appointment.doctorName,
                  specialty: appointment.specialty,
                  doctorImageUrl: appointment.imageUrl,
                  dateTime: '${appointment.date} - ${appointment.time}',
                  status: _getStatusText(appointment.status),
                  visitSummary:
                      'Discussed patient chest pains and conducted an EKG. Results were normal, but advised to monitor symptoms and schedule a follow-up if they persist.',
                  prescriptions: [
                    PrescriptionData(
                      medicationName: 'Lisinopril',
                      dosage: '10mg, once daily',
                    ),
                  ],
                );

                Navigator.pushNamed(
                  context,
                  AppRoutes.appointmentDetailsRoute,
                  arguments: appointmentDetailsData,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              child: const Text(
                'View Details',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getStatusColor(AppointmentStatus status) {
    switch (status) {
      case AppointmentStatus.completed:
        return Colors.green;
      case AppointmentStatus.missed:
        return Colors.red;
      case AppointmentStatus.cancelled:
        return Colors.orange;
      default:
        return AppColors.primaryColor;
    }
  }

  String _getStatusText(AppointmentStatus status) {
    switch (status) {
      case AppointmentStatus.completed:
        return 'Completed';
      case AppointmentStatus.missed:
        return 'Missed';
      case AppointmentStatus.cancelled:
        return 'Cancelled';
      default:
        return 'Upcoming';
    }
  }
}
