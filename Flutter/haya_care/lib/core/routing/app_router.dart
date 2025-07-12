import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haya_care/core/routing/routes.dart';
import 'package:haya_care/core/di/dependency_injection.dart';
import 'package:haya_care/features/login/logic/login_cubit.dart';
import 'package:haya_care/features/sign_up/logic/signup_cubit.dart';
import 'package:haya_care/features/home/presentation/screens/home_screen.dart';
import 'package:haya_care/features/login/presentation/screens/doctor_login_screen.dart';
import 'package:haya_care/features/login/presentation/screens/patient_login_screen.dart';
import 'package:haya_care/features/sign_up/presentation/screens/doctor_signup_screen.dart';
import 'package:haya_care/features/sign_up/presentation/screens/patient_signup_screen.dart';

class AppRouter {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this(argument as className)
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.patientLoginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: PatientLoginScreen(),
              ),
        );
      case Routes.patientSignupScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<SignupCubit>(),
                child: PatientSignupScreen(),
              ),
        );
      case Routes.doctorLoginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child:DoctorLoginScreen(),
              ),
        );
      case Routes.doctorSignupScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<SignupCubit>(),
                child: DoctorSignupScreen(),
              ),
        );
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                appBar: AppBar(title: Text('Unknown Route')),
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
