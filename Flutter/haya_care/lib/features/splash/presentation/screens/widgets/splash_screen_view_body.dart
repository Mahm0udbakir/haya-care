import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreenViewBody extends StatelessWidget {
  const SplashScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [SvgPicture.asset('assets/images/splash.svg')]);
  }
}
