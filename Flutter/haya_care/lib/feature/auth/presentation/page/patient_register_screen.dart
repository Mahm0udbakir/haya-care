import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/custom_national_id.dart';
import '../widget/custom_personal_info.dart';
import '../widget/custom_stepper.dart';

class PatientRegisterScreen extends StatefulWidget {
  const PatientRegisterScreen({super.key});

  @override
  State<PatientRegisterScreen> createState() => _PatientRegisterScreenState();
}

class _PatientRegisterScreenState extends State<PatientRegisterScreen> {

  bool isComplete = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                32.verticalSpace,
                CustomStepper(
                  isCompleted: isComplete,
                  title: "National ID",
                ),
                !isComplete ? CustomPersonalInfo(
                  userType: "Patient",
                  isCompleted: (value){
                    setState(() {
                      isComplete = value;
                    });
                  },
                ) : const CustomNationalId(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
