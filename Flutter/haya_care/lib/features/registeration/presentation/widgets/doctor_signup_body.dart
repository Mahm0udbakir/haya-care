import 'package:flutter/material.dart';
import 'package:haya_care/core/routing/routes.dart';
import 'package:haya_care/core/theming/colors.dart';
import 'package:haya_care/core/theming/styles.dart';
import 'package:haya_care/core/helpers/spacing.dart';
import 'package:haya_care/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haya_care/core/widgets/app_text_form_field.dart';
import 'package:haya_care/core/widgets/or_continue_with_google.dart';
import 'package:haya_care/features/registeration/presentation/widgets/already_have_an_account.dart';class DoctorSignupBody extends StatefulWidget {


  const DoctorSignupBody({super.key, required this.tabController});
  final TabController tabController;

  @override
  State<DoctorSignupBody> createState() => _DoctorSignupBodyState();
}

class _DoctorSignupBodyState extends State<DoctorSignupBody> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  bool _acceptTerms = false;


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
                verticalSpace(24),
                AppTextFormField(
                  hintText: "Confirm Password",
                  isObscureText: _obscureConfirmPassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureConfirmPassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: ColorsManager.darkGrey,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureConfirmPassword = !_obscureConfirmPassword;
                      });
                    },
                  ),
                  validator: (value) {},
                ),

                verticalSpace(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      checkColor: ColorsManager.primaryColor,
                      side: const BorderSide(color: ColorsManager.darkGrey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      activeColor: ColorsManager.white,
                      value: _acceptTerms,
                      onChanged: (value) {
                        setState(() {
                          _acceptTerms = value ?? false;
                        });
                      },
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: 18.0.h),
                      child: RichText(
                        text: TextSpan(
                          text: "Terms of Service Privacy Policy",
                          style: TextStyles.font12BlackSemiBold.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                CustomButton(text: "Sign Up"),
                verticalSpace(16),
                const OrContinueWithGoogle(),

                verticalSpace(20),
                AlreadyHaveAnAccountText(tabController:  widget.tabController),
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}