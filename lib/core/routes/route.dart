import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/feature/home/ui/view/home_screen.dart';
import 'package:haya_care/feature/home/ui/view/nav_bar_screen.dart';
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

      default:
        return null;
    }
  }
}
