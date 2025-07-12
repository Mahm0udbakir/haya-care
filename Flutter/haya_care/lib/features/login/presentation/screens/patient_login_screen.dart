import 'package:flutter/material.dart';
import 'package:haya_care/core/theming/colors.dart';
import 'package:haya_care/core/theming/styles.dart';
import 'package:haya_care/core/helpers/spacing.dart';
import 'package:haya_care/core/widgets/custom_button.dart';
import 'package:haya_care/core/widgets/app_text_form_field.dart';
import 'package:haya_care/core/widgets/or_continue_with_google.dart';
import 'package:haya_care/features/login/presentation/widgets/do_not_have_account_text.dart';

class PatientLoginScreen extends StatefulWidget {
  const PatientLoginScreen({super.key});

  @override
  State<PatientLoginScreen> createState() => _PatientLoginScreenState();
}

class _PatientLoginScreenState extends State<PatientLoginScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _obscurePassword = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
                TabBar(
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  controller: _tabController,
                  indicatorColor: ColorsManager.primaryColor,

                  unselectedLabelColor: ColorsManager.darkGrey,
                  tabs: const [Tab(text: "Login"), Tab(text: "Sign Up")],
                  labelStyle: TextStyles.font14BlackBold.copyWith(
                    fontFamily: "publicSans",
                  ),
                ),
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
                    Checkbox(value: false, onChanged: (val) {}),
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
                DontHaveAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
