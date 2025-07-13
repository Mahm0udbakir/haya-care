import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({super.key, required this.isCompleted, required this.title});

  final bool isCompleted;
  final String title ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 40.h,
                width: 40.w,
                padding: EdgeInsets.all(isCompleted ? 0 : 18),
                decoration: BoxDecoration(
                  color:
                      isCompleted
                          ? AppColors.primaryColor
                          : AppColors.background,
                  border: Border.all(color: AppColors.primaryColor),
                  shape: BoxShape.circle,
                ),
                child:
                    isCompleted
                        ? const Icon(
                          Icons.check,
                          color: AppColors.background,
                          size: 30,
                        )
                        : CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                        ),
              ),
              2.verticalSpace,
              Text(
                'Personal Info',
                style: AppTextStyles.font16Medium(context),
              ),
            ],
          ),
          Expanded(
            child: Transform.translate(
              offset: const Offset(0, -10),
              child: Divider(color: AppColors.primaryColor, thickness: 2),
            ),
          ),
          Column(
            children: [
              Container(
                height: 40.h,
                width: 40.w,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primaryColor),
                  shape: BoxShape.circle,
                ),
                child:
                    isCompleted
                        ? CircleAvatar(
                          backgroundColor: AppColors.primaryColor,
                        )
                        : null,
              ),
              Text(
                title,
                style: AppTextStyles.font16Medium(context).copyWith(
                  color: isCompleted ? AppColors.black : AppColors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
