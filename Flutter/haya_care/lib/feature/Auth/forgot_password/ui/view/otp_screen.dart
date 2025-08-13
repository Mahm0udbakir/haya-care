import 'package:flutter/material.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/widget/custom_elevated_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Verification'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Text(
                'Enter the code',
                style: theme.titleLarge,
              ),
              SizedBox(height: 24),
              CustomPinCodeWidget(),
              SizedBox(height: 24),
              Text(
                'We have sent a verification code ',
                style: theme.titleLarge,
              ),
              SizedBox(height: 8),
              Text(
                'Resend code in 00:25',
                style: theme.titleMedium,
              ),
              SizedBox(height: 32),
              CustomElevatedButton(
                  text: 'Verify',
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.resetScreenRoute);
                  })
            ],
          ),
        ),
      ),
    );
  }
}

class CustomPinCodeWidget extends StatelessWidget {
  const CustomPinCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      autoFocus: true,
      obscureText: false,
      cursorColor: AppColors.blackColor,
      keyboardType: TextInputType.number,
      animationType: AnimationType.scale,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        borderWidth: 1,
        activeFillColor: AppColors.grayColor,
        inactiveColor: AppColors.grayColor2,
        inactiveFillColor: AppColors.whiteColor,
        selectedColor: AppColors.primaryColor,
        selectedFillColor: AppColors.primaryColor,
      ),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: Colors.white,
      enableActiveFill: true,
      onCompleted: (code) {
        //هنا بقا هناخد الكود اللى المستخدم دخله ونشوف بقا هنتعامل معاها ازاى

        print("Completed");
      },
      onChanged: (value) {
        print(value);
      },
    );
  }
}
