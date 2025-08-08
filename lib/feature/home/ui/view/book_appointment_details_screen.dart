import 'package:flutter/material.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/widget/custom_elevated_button.dart';

class BookAppointmentDetailsScreen extends StatefulWidget {
  final DoctorBookingData doctorData;

  const BookAppointmentDetailsScreen({
    super.key,
    required this.doctorData,
  });

  @override
  State<BookAppointmentDetailsScreen> createState() =>
      _BookAppointmentDetailsScreenState();
}

class _BookAppointmentDetailsScreenState
    extends State<BookAppointmentDetailsScreen> {
  DateTime selectedDate = DateTime.now();
  String? selectedTime;
  PageController pageController = PageController();

  final List<String> timeSlots = [
    '9:00 AM',
    '9:30 AM',
    '10:00 AM',
    '10:30 AM',
    '11:00 AM',
    '11:30 AM',
    '12:00 PM',
    '12:30 PM',
    '1:00 PM',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Book Appointment',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Doctor Information Section
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // Doctor Image
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.backgroundColor,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        widget.doctorData.imageUrl,
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

                  const SizedBox(width: 16),

                  // Doctor Info
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.doctorData.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.doctorData.specialty,
                          style: const TextStyle(
                            fontSize: 14,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // Available Times Section
            Container(
              color: Colors.white,
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Available Times',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Calendar Section
                  _buildCalendar(),

                  const SizedBox(height: 24),

                  // Time Slots Section
                  _buildTimeSlots(),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Confirm Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomElevatedButton(
                text: 'Confirm Appointment',
                onPressed: selectedTime != null ? _confirmAppointment : () {},
                // textStyle: AppStyles.buttonTextStyle,
                borderRadius: 12,
                heigth: 50,
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCalendar() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          // Month Navigation
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: _previousMonth,
                icon: const Icon(Icons.chevron_left,
                    color: AppColors.textPrimary),
              ),
              Text(
                _getMonthYear(selectedDate),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                ),
              ),
              IconButton(
                onPressed: _nextMonth,
                icon: const Icon(Icons.chevron_right,
                    color: AppColors.textPrimary),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // Week Days Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: ['S', 'M', 'T', 'W', 'T', 'F', 'S']
                .map((day) => Container(
                      width: 32,
                      height: 32,
                      alignment: Alignment.center,
                      child: Text(
                        day,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ))
                .toList(),
          ),

          const SizedBox(height: 8),

          // Calendar Grid
          _buildCalendarGrid(),
        ],
      ),
    );
  }

  Widget _buildCalendarGrid() {
    final firstDayOfMonth = DateTime(selectedDate.year, selectedDate.month, 1);
    final lastDayOfMonth =
        DateTime(selectedDate.year, selectedDate.month + 1, 0);
    final firstWeekday = firstDayOfMonth.weekday % 7;
    final totalDays = lastDayOfMonth.day;

    List<Widget> calendarCells = [];

    // Add empty cells for days before the first day of the month
    for (int i = 0; i < firstWeekday; i++) {
      final prevMonthDay =
          DateTime(selectedDate.year, selectedDate.month, 0).day -
              firstWeekday +
              i +
              1;
      calendarCells.add(_buildCalendarCell(
        prevMonthDay.toString(),
        isCurrentMonth: false,
        date: DateTime(selectedDate.year, selectedDate.month - 1, prevMonthDay),
      ));
    }

    // Add cells for current month days
    for (int day = 1; day <= totalDays; day++) {
      final cellDate = DateTime(selectedDate.year, selectedDate.month, day);
      calendarCells.add(_buildCalendarCell(
        day.toString(),
        isCurrentMonth: true,
        date: cellDate,
        isSelected: _isSameDay(cellDate, selectedDate),
      ));
    }

    // Add cells for next month days to complete the grid
    final remainingCells = 42 - calendarCells.length; // 6 rows * 7 days
    for (int day = 1; day <= remainingCells; day++) {
      calendarCells.add(_buildCalendarCell(
        day.toString(),
        isCurrentMonth: false,
        date: DateTime(selectedDate.year, selectedDate.month + 1, day),
      ));
    }

    return Column(
      children: [
        for (int week = 0; week < 6; week++)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: calendarCells.sublist(week * 7, (week + 1) * 7),
          ),
      ],
    );
  }

  Widget _buildCalendarCell(
    String day, {
    required bool isCurrentMonth,
    required DateTime date,
    bool isSelected = false,
  }) {
    final isToday = _isSameDay(date, DateTime.now());
    final isPast =
        date.isBefore(DateTime.now().subtract(const Duration(days: 1)));

    return GestureDetector(
      onTap: isCurrentMonth && !isPast ? () => _selectDate(date) : null,
      child: Container(
        width: 32,
        height: 32,
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.primaryColor
              : isToday
                  ? AppColors.primaryColor.withOpacity(0.1)
                  : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
        ),
        alignment: Alignment.center,
        child: Text(
          day,
          style: TextStyle(
            fontSize: 14,
            fontWeight:
                isSelected || isToday ? FontWeight.w600 : FontWeight.w400,
            color: isSelected
                ? Colors.white
                : isPast || !isCurrentMonth
                    ? AppColors.textTertiary
                    : AppColors.textPrimary,
          ),
        ),
      ),
    );
  }

  Widget _buildTimeSlots() {
    return Column(
      children: [
        for (int i = 0; i < timeSlots.length; i += 3)
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                for (int j = i; j < i + 3 && j < timeSlots.length; j++)
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: j < i + 2 && j < timeSlots.length - 1 ? 12 : 0,
                      ),
                      child: _buildTimeSlot(timeSlots[j]),
                    ),
                  ),
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildTimeSlot(String time) {
    final isSelected = selectedTime == time;
    return GestureDetector(
      onTap: () => _selectTime(time),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color:
              isSelected ? AppColors.primaryColor : AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected
                ? AppColors.primaryColor
                : AppColors.textTertiary.withOpacity(0.2),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          time,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: isSelected ? Colors.white : AppColors.textPrimary,
          ),
        ),
      ),
    );
  }

  void _selectDate(DateTime date) {
    setState(() {
      selectedDate = date;
      selectedTime = null; // Reset time selection when date changes
    });
  }

  void _selectTime(String time) {
    setState(() {
      selectedTime = time;
    });
  }

  void _previousMonth() {
    setState(() {
      selectedDate = DateTime(selectedDate.year, selectedDate.month - 1, 1);
    });
  }

  void _nextMonth() {
    setState(() {
      selectedDate = DateTime(selectedDate.year, selectedDate.month + 1, 1);
    });
  }

  String _getMonthYear(DateTime date) {
    const months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    return '${months[date.month - 1]} ${date.year}';
  }

  bool _isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  void _confirmAppointment() {
    if (selectedTime != null) {
      // Show success message and navigate back
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Appointment booked with ${widget.doctorData.name} on ${_formatDate(selectedDate)} at $selectedTime',
          ),
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 3),
        ),
      );
      Navigator.of(context).pop();
    }
  }

  String _formatDate(DateTime date) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    return '${months[date.month - 1]} ${date.day}, ${date.year}';
  }
}

class DoctorBookingData {
  final String name;
  final String specialty;
  final String imageUrl;

  DoctorBookingData({
    required this.name,
    required this.specialty,
    required this.imageUrl,
  });
}
