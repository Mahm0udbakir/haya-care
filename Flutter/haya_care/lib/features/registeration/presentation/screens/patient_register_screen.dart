import 'package:flutter/material.dart';
import 'package:haya_care/core/theming/colors.dart';
import 'package:haya_care/core/helpers/spacing.dart';
import 'package:haya_care/core/widgets/custom_tab_bar.dart';
import 'package:haya_care/features/registeration/presentation/widgets/patient_login_body.dart';
import 'package:haya_care/features/registeration/presentation/widgets/patient_signup_body.dart';

class PatientRegisterScreen extends StatefulWidget {
  const PatientRegisterScreen({super.key});

  @override
  State<PatientRegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<PatientRegisterScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,

      body: Column(
        children: [
          verticalSpace(100),
          CustomTabBar(controller: _tabController),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                PatientLoginBody(tabController: _tabController),
                PatientSignupBody(tabController: _tabController),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
