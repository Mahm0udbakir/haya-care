import 'package:flutter/material.dart';
import 'package:haya_care/core/routes/app_router.dart';
import 'package:haya_care/my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final appRouter = AppRouter();
  runApp(MyApp(
    appRouter: appRouter,
  ));
}
