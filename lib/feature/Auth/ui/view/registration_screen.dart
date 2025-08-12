import 'package:flutter/material.dart';
import 'package:haya_care/core/widget/custom_elevated_button.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/feature/Auth/ui/view/widget/custom_medical_info.dart';
import 'package:haya_care/feature/Auth/ui/view/widget/custom_personl_info.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _CustomStepperExampleState();
}

class _CustomStepperExampleState extends State<RegistrationScreen> {
  int currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  _buildStepCircle(0),
                  Expanded(
                    child: Container(
                      height: 2,
                      color: currentStep >= 1
                          ? AppColors.primaryColor
                          : AppColors.grayColor2,
                    ),
                  ),
                  _buildStepCircle(1),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(textAlign: TextAlign.center, "Personal\nInfo"),
                  Text("Medical Info"),
                ],
              ),
              const SizedBox(height: 40),
              Expanded(
                child: SingleChildScrollView(
                  child: currentStep == 0
                      ? const CustomPersonlInfo()
                      : const CustomMedicalInfo(),
                ),
              ),
              if (currentStep == 0)
                CustomElevatedButton(
                  text: "Continue",
                  onPressed: () {
                    setState(() {
                      if (currentStep < 1) {
                        currentStep++;
                      } else {
                        // Submit action here
                      }
                    });
                  },
                )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStepCircle(int step) {
    bool isCompleted = currentStep > step;
    bool isActive = currentStep == step;

    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.primaryColor,
          width: 2,
        ),
      ),
      child: CircleAvatar(
        radius: 18,
        backgroundColor: isCompleted || isActive
            ? AppColors.primaryColor
            : AppColors.whiteColor,
        child: isCompleted
            ? const Icon(Icons.check, color: Colors.white, size: 20)
            : Text(
                "•",
                style: TextStyle(
                  color: isActive ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
      ),
    );
  }
}
