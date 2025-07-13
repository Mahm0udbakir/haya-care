import 'package:flutter/material.dart';
import 'package:haya_care/core/theming/colors.dart';
import 'package:haya_care/core/theming/styles.dart';
import 'package:haya_care/core/helpers/spacing.dart';
import 'package:haya_care/core/widgets/custom_button.dart';
import 'package:haya_care/core/widgets/app_text_form_field.dart';
import 'package:haya_care/core/widgets/or_continue_with_google.dart';
import 'package:haya_care/features/registeration/presentation/widgets/do_not_have_account_text.dart';

class DoctorLoginBody extends StatefulWidget {
  const DoctorLoginBody({super.key, required this.tabController});
  final TabController tabController;

  @override
  State<DoctorLoginBody> createState() => _PatientLoginScreenState();
}

class _PatientLoginScreenState extends State<DoctorLoginBody> {
  bool _obscurePassword = true;
  bool _rememberMe = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(24),
                Text(
                  "Email",
                  style: TextStyles.font16BlackMedium.copyWith(
                    fontFamily: "PublicSans",
                  ),
                ),
                const SizedBox(height: 8),
                AppTextFormField(
                  hintText: "Enter your email",
                  validator: ((value) {}),
                ),
                verticalSpace(36),

                Text(
                  "Password",
                  style: TextStyles.font16BlackMedium.copyWith(
                    fontFamily: "PublicSans",
                  ),
                ),
                const SizedBox(height: 8),
                AppTextFormField(
                  hintText: "Enter your password",
                  isObscureText: _obscurePassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: ColorsManager.darkGrey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  validator: (value) {},
                ),
                verticalSpace(8),

                Row(
                  children: [
                    Checkbox(
                      checkColor: ColorsManager.primaryColor,
                      side: const BorderSide(color: ColorsManager.darkGrey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      activeColor: ColorsManager.white,
                      value: _rememberMe,
                      onChanged: (value) {
                        setState(() {
                          _rememberMe = value ?? false;
                        });
                      },
                    ),
                    Text("Remember me", style: TextStyles.font16BlackMedium),
                  ],
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password",
                      style: TextStyles.font14BlackBold.copyWith(
                        decoration: TextDecoration.underline,
                        fontFamily: "PublicSans",
                      ),
                    ),
                  ),
                ),
                verticalSpace(8),

                CustomButton(text: "Sign in"),
                verticalSpace(16),
                const OrContinueWithGoogle(),

                verticalSpace(20),
                DontHaveAccountText(tabController: widget.tabController),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
