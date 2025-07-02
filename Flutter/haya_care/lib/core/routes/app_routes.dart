import 'package:flutter/material.dart';
import 'package:haya_care/core/routes/app_name_routes.dart';
import 'package:haya_care/features/splash/presentation/screens/splash_screen_view.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppNameRoutes.splahscreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => const Scaffold(
                body: Center(child: Text('404 - Page Not Found')),
              ),
        );
    }
  }
}
