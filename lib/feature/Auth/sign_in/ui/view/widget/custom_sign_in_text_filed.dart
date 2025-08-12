import 'package:flutter/material.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/core/widget/custom_elevated_button.dart';
import 'package:haya_care/core/widget/custom_text_form.dart';
import 'package:haya_care/feature/Auth/ui/view/widget/custom_filed_password.dart';

class CustomSignInTextFiled extends StatefulWidget {
  const CustomSignInTextFiled({super.key});

  @override
  State<CustomSignInTextFiled> createState() => _CustomSignInTextFiledState();
}

class _CustomSignInTextFiledState extends State<CustomSignInTextFiled> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  final TextEditingController passwordCtrlConfirm = TextEditingController();
  final ValueNotifier<bool> isPasswordHidden = ValueNotifier(true);
  final ValueNotifier<bool> isPasswordHiddenConfirm = ValueNotifier(true);
  final ValueNotifier<bool> privacy = ValueNotifier(false);

  @override
  void dispose() {
    emailCtrl.dispose();
    passwordCtrl.dispose();
    passwordCtrlConfirm.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: theme.titleLarge,
          ),
          SizedBox(height: 8),
          CustomTextForm(
            hintText: 'Enter  your email',
            keyboardType: TextInputType.emailAddress,
            controller: emailCtrl,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Password',
            style: theme.titleLarge,
          ),
          SizedBox(height: 8),
          CustomFiledPassword(
              hintText: 'Password',
              isPasswordHidden: isPasswordHidden,
              passwordCtrl: passwordCtrl),
          SizedBox(height: 8),
          CustomFiledPassword(
              hintText: 'Confirm Password',
              isPasswordHidden: isPasswordHiddenConfirm,
              passwordCtrl: passwordCtrlConfirm),
          const SizedBox(height: 8),
          ValueListenableBuilder<bool>(
            valueListenable: privacy,
            builder: (context, value, child) {
              return Row(
                children: [
                  Checkbox(
                    value: value,
                    onChanged: (newValue) {
                      privacy.value = newValue ?? false;
                    },
                  ),
                  const Text("Terms of Service Privacy Policy"),
                ],
              );
            },
          ),
          const SizedBox(height: 24),
          CustomElevatedButton(
            text: 'Sign In',
            onPressed: () {
              if (_formKey.currentState?.validate() != true) return;
              Navigator.pushReplacementNamed(
                  context, AppRoutes.registrationRoute);
            },
          ),
        ],
      ),
    );
  }
}
