import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/feature/home/ui/view/home_screen.dart';
import 'package:haya_care/feature/home/ui/view/nav_bar_screen.dart';
import 'package:haya_care/feature/home/ui/view/profile_screen.dart';
import 'package:haya_care/feature/home/ui/view/appointment_details_screen.dart';
import 'package:haya_care/feature/home/ui/view/book_appointment_screen.dart';
import 'package:haya_care/feature/home/ui/view_model/bottom_nav_bar_cubit.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case AppRoutes.splasahRouter:
      //   return MaterialPageRoute(builder: (_) => const SplashScreen());
      case AppRoutes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppRoutes.newHomeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppRoutes.navigationBarRoute:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => BottomNavCubit(),
                  child: const NavBarScreen(),
                ));
      case AppRoutes.profileRoute:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case AppRoutes.appointmentDetailsRoute:
        final appointmentData = settings.arguments as AppointmentDetailsData;
        return MaterialPageRoute(
          builder: (_) =>
              AppointmentDetailsScreen(appointmentData: appointmentData),
        );
      case AppRoutes.bookAppointmentRoute:
        final doctorData = settings.arguments as DoctorBookingData;
        return MaterialPageRoute(
          builder: (_) => BookAppointmentScreen(doctorData: doctorData),
        );

      default:
        return null;
    }
  }
}
