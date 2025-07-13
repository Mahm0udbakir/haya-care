import 'package:flutter/material.dart';
import 'package:haya_care/core/theming/colors.dart';
import 'package:haya_care/core/theming/styles.dart';

class CustomTabBar extends StatelessWidget {
  final TabController controller;

  const CustomTabBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      tabAlignment: TabAlignment.start,
      controller: controller,
      indicatorColor: ColorsManager.primaryColor,
      unselectedLabelColor: ColorsManager.darkGrey,
      tabs: const [Tab(text: "Login"), Tab(text: "Sign Up")],
      labelStyle: TextStyles.font14BlackBold.copyWith(
        fontFamily: "publicSans",
      ),
    );
  }
}
