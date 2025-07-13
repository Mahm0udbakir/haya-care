import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_field.dart';

class CustomNationalId extends StatelessWidget {
  const CustomNationalId({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        56.verticalSpace,
        Text(
          "National ID Number",
          style: AppTextStyles.font16SemiBold(
            context,
          ).copyWith(color: AppColors.moreGrey),
        ),
        25.verticalSpace,
        CustomTextField(),
        80.verticalSpace,
        Align(
          alignment: Alignment.center,
          child: CustomButton(
            onPressed: () {},
            yPadding : 10.h,
            width: 270.w,

            text: 'Verify',
          ),
        ),
        41.verticalSpace,
        Align(
          alignment: Alignment.center,
          child: Text(
            "Already have an account? Log In ",
            style: AppTextStyles.font16Regular(
              context,
            ).copyWith(color: AppColors.primaryColor),
          ),
        ),
      ],
    );
  }
}
