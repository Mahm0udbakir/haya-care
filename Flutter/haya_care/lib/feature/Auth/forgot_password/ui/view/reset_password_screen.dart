import 'package:flutter/material.dart';
import 'package:haya_care/core/routes/app_routes.dart';
import 'package:haya_care/core/widget/custom_dialog_widget.dart';
import 'package:haya_care/core/widget/custom_elevated_button.dart';
import 'package:haya_care/feature/Auth/ui/view/widget/custom_filed_password.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController passwordCtrl = TextEditingController();
  final TextEditingController passwordCtrlConfirm = TextEditingController();
  final ValueNotifier<bool> isPasswordHidden = ValueNotifier(true);
  final ValueNotifier<bool> isPasswordHiddenConfirm = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reset Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Enter New Password.',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 32),
            CustomFiledPassword(
                hintText: 'Enter your Password',
                isPasswordHidden: isPasswordHidden,
                passwordCtrl: passwordCtrl,),
            SizedBox(height: 16),
            CustomFiledPassword(
                hintText: 'Confirm Password',
                isPasswordHidden: isPasswordHiddenConfirm,
                passwordCtrl: passwordCtrlConfirm,),
            SizedBox(height: 32),
            CustomElevatedButton(
                text: 'Submit',
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => CustomDialogWidget(
                      buttonText: 'Back to Login',
                      message:
                          'Your password has been successfully reset. You can now log in with your new password.',
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, AppRoutes.loginInRoute);
                      },
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
