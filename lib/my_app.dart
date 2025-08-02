import 'package:flutter/material.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/core/routes/route.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Haya Care',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.navigationBarRoute,
      onGenerateRoute:
          AppRouter.generateRoute, // Assuming you have a SplashScreen widget
    );
  }
}
