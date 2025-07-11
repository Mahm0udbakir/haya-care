import 'package:flutter/material.dart';
import 'package:haya_care/core/routing/routes.dart';
import 'package:haya_care/core/theming/colors.dart';
import 'package:haya_care/core/routing/app_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HayaCareApp extends StatelessWidget {
  final AppRouter appRouter;

  const HayaCareApp ({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(375, 812),
      child: MaterialApp(
        onGenerateRoute: AppRouter.generateRoute,
        title: "Haya Care",
        theme: ThemeData(
          primaryColor: ColorsManager.primaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.homeScreen

    
      ),
    );
  }
}

