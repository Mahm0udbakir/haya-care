import 'package:flutter/material.dart';
import 'package:haya_care/core/routes/app_name_routes.dart';
import 'package:haya_care/core/routes/app_routes.dart';

void main() {
  runApp(HayaCare());
}

class HayaCare extends StatelessWidget {
  const HayaCare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: AppNameRoutes.splahscreen,
    );
  }
}
