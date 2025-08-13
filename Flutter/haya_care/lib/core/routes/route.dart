import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/feature/Auth/forgot_password/ui/view/forgot_password_screen.dart';
import 'package:haya_care/feature/Auth/forgot_password/ui/view/otp_screen.dart';
import 'package:haya_care/feature/Auth/forgot_password/ui/view/reset_password_screen.dart';
import 'package:haya_care/feature/Auth/login/ui/view/login_screen.dart';
import 'package:haya_care/feature/Auth/sign_in/ui/view/sign_in_view.dart';
import 'package:haya_care/feature/Auth/ui/view/registration_screen.dart';
import 'package:haya_care/feature/Auth/ui/view/welcome_screen.dart';
import 'package:haya_care/feature/home/ui/view/appointment_details_screen.dart';
import 'package:haya_care/feature/home/ui/view/book_appointment_details_screen.dart';
import 'package:haya_care/feature/home/ui/view/book_appointment_screen.dart';
import 'package:haya_care/feature/home/ui/view/home_screen.dart';
import 'package:haya_care/feature/home/ui/view/nav_bar_screen.dart';
import 'package:haya_care/feature/home/ui/view/notifications_screen.dart';
import 'package:haya_care/feature/home/ui/view/profile_screen.dart';
import 'package:haya_care/feature/home/ui/view/reminders_screen.dart';
import 'package:haya_care/feature/home/ui/view_model/bottom_nav_bar_cubit.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case AppRoutes.welcomeRoute:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());

      case AppRoutes.registrationRoute:
        return MaterialPageRoute(builder: (_) => RegistrationScreen());
      case AppRoutes.signInRoute:
        return MaterialPageRoute(builder: (_) => const SignInView());
      // case AppRoutes.signInRoute:
      //   return MaterialPageRoute(builder: (_) => const SignInView());
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
      case AppRoutes.remindersRoute:
        return MaterialPageRoute(builder: (_) => RemindersScreen());
      case AppRoutes.appointmentDetailsRoute:
        return MaterialPageRoute(
          builder: (_) => AppointmentDetailsScreen(),
        );
      case AppRoutes.bookAppointmentRoute:
        return MaterialPageRoute(
          builder: (_) => BookAppointmentScreen(),
        );
      case AppRoutes.bookAppointmentDetailsRoute:
        final doctorData = settings.arguments as DoctorBookingData;
        return MaterialPageRoute(
          builder: (_) => BookAppointmentDetailsScreen(doctorData: doctorData),
        );
      case AppRoutes.notificationsRoute:
        return MaterialPageRoute(builder: (_) => NotificationsScreen());
      case AppRoutes.loginInRoute:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case AppRoutes.forgetpassRoute:
        return MaterialPageRoute(builder: (_) => ForgotPasswordScreen());
      case AppRoutes.otpScreenRoute:
        return MaterialPageRoute(builder: (_) => OtpScreen());
      case AppRoutes.resetScreenRoute:
        return MaterialPageRoute(builder: (_) => ResetPasswordScreen());

      default:
        return null;
    }
  }
}
