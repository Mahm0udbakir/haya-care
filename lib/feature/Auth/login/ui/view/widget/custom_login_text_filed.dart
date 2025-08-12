import 'package:flutter/material.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/widget/custom_elevated_button.dart';
import 'package:haya_care/core/widget/custom_text_form.dart';
import 'package:haya_care/feature/Auth/ui/view/widget/custom_filed_password.dart';

class CustomLoginTextFiled extends StatefulWidget {
  const CustomLoginTextFiled({super.key});

  @override
  State<CustomLoginTextFiled> createState() => _CustomLoginTextFiledState();
}

class _CustomLoginTextFiledState extends State<CustomLoginTextFiled> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailCtrl = TextEditingController();
  final TextEditingController passwordCtrl = TextEditingController();
  final ValueNotifier<bool> isPasswordHidden = ValueNotifier(true);
  final ValueNotifier<bool> rememberMe = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login to your account',
            style: theme.titleLarge!
                .copyWith(color: AppColors.primaryColor, fontSize: 24),
          ),
          SizedBox(height: 24),
          Text(
            'Email',
            style: theme.titleLarge,
          ),
          SizedBox(height: 8),
          CustomTextForm(
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            controller: emailCtrl,
          ),
          SizedBox(
            height: 16,
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
          Row(
            children: [
              ValueListenableBuilder<bool>(
                valueListenable: rememberMe,
                builder: (context, value, child) {
                  return Row(
                    children: [
                      Checkbox(
                        value: value,
                        onChanged: (newValue) {
                          rememberMe.value = newValue ?? false;
                        },
                      ),
                      const Text("Remember Me"),
                    ],
                  );
                },
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.forgetpassRoute);
                },
                child: Text(
                  'Forgot Password',
                  style: theme.bodyMedium?.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          CustomElevatedButton(
              text: 'Login',
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Handle login logic here
                  Navigator.pushReplacementNamed(context, AppRoutes.navigationBarRoute);
                }
              }),
        ],
      ),
    );
  }
}
