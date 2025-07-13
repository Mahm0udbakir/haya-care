import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:haya_care/core/widgets/custom_button.dart';
import 'package:haya_care/core/widgets/custom_text_field.dart';
import 'package:intl/intl.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../../../core/widgets/custom_drop_down_widget.dart';

class CustomPersonalInfo extends StatefulWidget {
  const CustomPersonalInfo({super.key, required this.isCompleted, required this.userType});

  final ValueChanged<bool> isCompleted;
  final String userType;

  @override
  State<CustomPersonalInfo> createState() => _CustomPersonalInfoState();
}

class _CustomPersonalInfoState extends State<CustomPersonalInfo> {

  late String selectedGender;
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        20.verticalSpace,
        Text(
          "Please provide your personal information to get started",
          style: AppTextStyles.font16Regular(
            context,
          ).copyWith(color: AppColors.moreGrey),
        ),
        21.verticalSpace,
        Align(
          alignment: Alignment.center,
          child: CircleAvatar(
            backgroundColor: AppColors.lighterGrey,
            radius: 70.r,
            child: const Icon(
              Icons.camera_alt_rounded,
              color: AppColors.darkGrey,
              size: 40,
            ),
          ),
        ),
        12.verticalSpace,
        Align(
          alignment: Alignment.center,
          child: Text(
            'Add Profile Photo',
            style: AppTextStyles.font14Regular(
              context,
            ).copyWith(color: AppColors.moreGrey),
          ),
        ),
        10.verticalSpace,
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'First Name',
                    style: AppTextStyles.font14Regular(
                      context,
                    ).copyWith(color: AppColors.moreGrey),
                  ),
                  5.verticalSpace,
                  CustomTextField(
                    labelText: 'Mohamed',
                    keyboardType: TextInputType.name,
                  ),
                ],
              ),
            ),
            12.horizontalSpace,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Last Name',
                    style: AppTextStyles.font14Regular(
                      context,
                    ).copyWith(color: AppColors.moreGrey),
                  ),
                  5.verticalSpace,
                  CustomTextField(
                    labelText: 'Ahmed',
                    keyboardType: TextInputType.name,
                  ),
                ],
              ),
            ),
          ],
        ),
        18.verticalSpace,
        Text(
          'Phone Number',
          style: AppTextStyles.font14Regular(
            context,
          ).copyWith(color: AppColors.moreGrey),
        ),
        5.verticalSpace,
        Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primaryColor, width: 1.5),
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  '+20',
                  style: AppTextStyles.font16Regular(
                    context,
                  ).copyWith(color: AppColors.grey),
                ),
              ),
              Container(
                width: 1.2,
                height: double.infinity,
                color: AppColors.primaryColor,
              ),
              Expanded(
                child: CustomTextField(
                  colorRadius: AppColors.background,
                  labelText: '(555) 123-4567',
                  keyboardType: TextInputType.phone,
                ),
              ),
            ],
          ),
        ),
        18.verticalSpace,
        Text(
          'Date of Birth',
          style: AppTextStyles.font14Regular(
            context,
          ).copyWith(color: AppColors.moreGrey),
        ),
        5.verticalSpace,
        CustomTextField(
          labelText: selectedDate == null
              ? 'mm/dd/yyyy'
              : DateFormat('dd/MM/yyyy').format(selectedDate!),
          keyboardType: TextInputType.datetime,
          suffixIcon: InkWell(
            onTap: () async {
                DateTime tempSelectedDate = selectedDate ?? DateTime.now();

                await showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      content: SizedBox(
                        width: 300.w,
                        height: 350.h,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: const ColorScheme.light(
                                    primary: AppColors.primaryColor,
                                  ),
                                ),
                                child: CalendarDatePicker(
                                  initialDate: tempSelectedDate,
                                  firstDate: DateTime(DateTime.now().year - 1),
                                  lastDate: DateTime(DateTime.now().year + 1),
                                  onDateChanged: (date) {
                                    tempSelectedDate = date;
                                  },
                                ),
                              ),
                            ),
                            20.verticalSpace,
                            CustomButton(onPressed: (){
                              setState(() {
                                selectedDate = tempSelectedDate;
                              });
                              Navigator.pop(context);
                            },
                              width: 100.w,
                              text: 'Done',
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
            },
            child: const Icon(
              Icons.calendar_today_outlined,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        18.verticalSpace,
        Text(
          'Gender',
          style: AppTextStyles.font14Regular(
            context,
          ).copyWith(color: AppColors.moreGrey),
        ),
        5.verticalSpace,
        CustomDropDownWidget(
          onChanged: (value) {
            selectedGender = value;
          },
          content: [
            'Male',
            'Female',
          ],
          colorIcon: AppColors.primaryColor,
          child: Text(
            "Select Gender",
            style: AppTextStyles.font16Regular(context).copyWith(
              color: AppColors.grey,
            ),
          ),
        ),
        80.verticalSpace,
        Align(
          alignment: Alignment.center,
          child: CustomButton(
              onPressed: () {
                setState(() {
                  widget.isCompleted(true);
                });
              },
              yPadding : 10.h,
              width: 270.w,

              text: 'Continue'),
        ),
        30.verticalSpace,
      ],
    );
  }
}
