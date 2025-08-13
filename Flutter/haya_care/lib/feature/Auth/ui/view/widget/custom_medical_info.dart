import 'package:flutter/material.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/widget/custom_elevated_button.dart';
import 'package:haya_care/core/widget/custom_text_form.dart';

class CustomMedicalInfo extends StatefulWidget {
  const CustomMedicalInfo({super.key});

  @override
  State<CustomMedicalInfo> createState() => _CustomMedicalInfoState();
}

class _CustomMedicalInfoState extends State<CustomMedicalInfo> {
  final TextEditingController nationalIdCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'National ID Number',
            style: theme.titleLarge,
          ),
          const SizedBox(height: 12),
          CustomTextForm(
            hintText: 'Enter National ID Number',
            controller: TextEditingController(),
          ),
          const SizedBox(height: 24),
          CustomElevatedButton(
              text: 'Verify',
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Handle the verification logic here
                  // Navigator.pushNamed(context, AppRoutes.verificationRoute);
                }
              }),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an an account?', style: theme.titleLarge),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(AppRoutes.loginInRoute);
                },
                child: Text('Login',
                    style: theme.titleLarge!
                        .copyWith(color: AppColors.primaryColor)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
