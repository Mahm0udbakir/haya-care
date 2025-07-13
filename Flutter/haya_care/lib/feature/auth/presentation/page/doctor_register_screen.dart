import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widget/custom_medical_info.dart';
import '../widget/custom_personal_info.dart';
import '../widget/custom_stepper.dart';

class DoctorRegisterScreen extends StatefulWidget {
  const DoctorRegisterScreen({super.key});

  @override
  State<DoctorRegisterScreen> createState() => _DoctorRegisterScreenState();
}

class _DoctorRegisterScreenState extends State<DoctorRegisterScreen> {

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
                  title: 'Medeical Info',
                ),
               !isComplete ? CustomPersonalInfo(
                  userType: 'Doctor',
                  isCompleted: (value){
                    setState(() {
                      isComplete = value;
                    });
                  },
                ) : const CustomMedicalInfo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
