import 'package:flutter/material.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/widget/custom_elevated_button.dart';
import 'package:haya_care/core/widget/custom_text_form.dart';

class CustomForgotPasswordWithPhone extends StatefulWidget {
  const CustomForgotPasswordWithPhone({super.key});

  @override
  State<CustomForgotPasswordWithPhone> createState() =>
      _CustomForgotPasswordWithPhoneState();
}

class _CustomForgotPasswordWithPhoneState
    extends State<CustomForgotPasswordWithPhone> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController phoneCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 32),
            Text(
              'Enter your phone number',
              style: theme.titleLarge,
            ),
            SizedBox(height: 8),
            Text(
              'We\'ll send you a code to reset your password',
              style: theme.bodyMedium,
            ),
            SizedBox(height: 32),
            Row(
              children: [
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: AppColors.backgroundcardColor,
                    border: Border.all(color: AppColors.primaryColor),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        topLeft: Radius.circular(8)),
                  ),
                  child: Center(child: Text('+20')),
                )),
                Expanded(
                  flex: 3,
                  child: CustomTextForm(
                      controller: phoneCtrl,
                      colorEnableBorder: theme.bodyLarge!.color,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(8),
                          topRight: Radius.circular(8)),
                      hintText: '1234567890',
                      keyboardType: TextInputType.phone),
                ),
              ],
            ),
            SizedBox(height: 32),
            CustomElevatedButton(
                text: 'Submit',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle the submission logic here
                    // For example, navigate to the OTP screen
                    Navigator.pushNamed(context, AppRoutes.otpScreenRoute);
                  }
                })
          ],
        ),
      ),
    );
  }
}
