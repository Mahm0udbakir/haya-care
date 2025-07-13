import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_drop_down_widget.dart';
import '../../../../../core/widgets/custom_text_field.dart';

class CustomMedicalInfo extends StatefulWidget {
  const CustomMedicalInfo({super.key});

  @override
  State<CustomMedicalInfo> createState() => _CustomMedicalInfoState();
}

class _CustomMedicalInfoState extends State<CustomMedicalInfo> {

  late String selectedSpecialization;
  final List<String> specializationsList = [
    'Pediatrics',
    'Internal Medicine',
    'Dentistry',
    'Dermatology',
    'Gynecology',
    'Orthopedics',
    'ENT',
    'Cardiology',
    'Neurology',
    'Surgery',
    'Ophthalmology',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        56.verticalSpace,
        Text(
          "Medical License Number",
          style: AppTextStyles.font16Regular(
            context,
          ).copyWith(color: AppColors.moreGrey),
        ),
        25.verticalSpace,
        CustomTextField(),
        25.verticalSpace,
        Text(
          "Specialization",
          style: AppTextStyles.font16Regular(
            context,
          ).copyWith(color: AppColors.moreGrey),
        ),
        25.verticalSpace,
        CustomDropDownWidget(
          onChanged: (value) {
            selectedSpecialization = value;
          },
          content: specializationsList,
          colorIcon: AppColors.primaryColor,
          child: Text(
            "Select Specialization",
            style: AppTextStyles.font16Regular(context).copyWith(
              color: AppColors.grey,
            ),
          ),
        ),
        52.verticalSpace,
        Align(
          alignment: Alignment.center,
          child: InkWell(
          onTap: () {
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.file_upload_outlined,
                color: AppColors.primaryColor,
                size: 35.sp,
              ),
              6.horizontalSpace,
              Text(
                'Upload Certificate',
                style: AppTextStyles.font24Regular(context).copyWith(
                  color: AppColors.primaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.primaryColor,

                ),
              ),
            ],
          ),
                ),
        ),
        52.verticalSpace,
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
