import 'package:flutter/material.dart';
import 'package:haya_care/core/widget/custom_elevated_button.dart';
import 'package:haya_care/core/widget/custom_text_form.dart';

class CustomForgotPasswordWithEmail extends StatefulWidget {
  const CustomForgotPasswordWithEmail({super.key});

  @override
  State<CustomForgotPasswordWithEmail> createState() =>
      _CustomForgotPasswordWithEmailState();
}

class _CustomForgotPasswordWithEmailState
    extends State<CustomForgotPasswordWithEmail> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailCtrl = TextEditingController();
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
              'Enter your email',
              style: theme.titleLarge,
            ),
            SizedBox(height: 8),
            Text(
              'We\'ll send you a code to reset your password',
              style: theme.bodyMedium,
            ),
            SizedBox(height: 32),
            CustomTextForm(
                controller: emailCtrl,
                hintText: 'Enter your email',
                keyboardType: TextInputType.emailAddress),
            SizedBox(height: 32),
            CustomElevatedButton(
                text: 'Submit',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle the submission logic here
                    // For example, navigate to the OTP screen
                    // Navigator.pushNamed(context, '/otpScreen');
                  }
                })
          ],
        ),
      ),
    );
  }
}
