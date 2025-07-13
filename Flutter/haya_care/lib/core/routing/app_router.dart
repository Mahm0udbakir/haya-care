import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haya_care/core/routing/routes.dart';
import 'package:haya_care/core/di/dependency_injection.dart';
import 'package:haya_care/features/registeration/logic/login_cubit.dart';
import 'package:haya_care/features/registeration/logic/signup_cubit.dart';
import 'package:haya_care/features/home/presentation/screens/home_screen.dart';
import 'package:haya_care/features/registeration/presentation/screens/doctor_register_screen.dart';
import 'package:haya_care/features/registeration/presentation/screens/patient_register_screen.dart';


class AppRouter {
  static MaterialPageRoute generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this(argument as className)
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.patientRegisterScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: PatientRegisterScreen(),
              ),
        );
      case Routes.doctorRegisterScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<SignupCubit>(),
                child: DoctorRegisterScreen(),
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
