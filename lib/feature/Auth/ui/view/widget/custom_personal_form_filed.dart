import 'package:flutter/material.dart';
import 'package:haya_care/core/theme/app_color.dart';
import 'package:haya_care/core/widget/custom_text_form.dart';
import 'package:haya_care/feature/Auth/ui/view/widget/custom_ropdown_utton_form_field.dart';

class CustomPersonalFormFiled extends StatefulWidget {
  const CustomPersonalFormFiled({super.key});

  @override
  State<CustomPersonalFormFiled> createState() =>
      _CustomPersonalFormFiledState();
}

class _CustomPersonalFormFiledState extends State<CustomPersonalFormFiled> {
  final TextEditingController firstNameCtrl = TextEditingController();
  final TextEditingController lastNameCtrl = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final TextEditingController phoneCtrl = TextEditingController();
  final TextEditingController dobCtrl = TextEditingController();

  final TextEditingController licenseCtrl = TextEditingController();
  final TextEditingController specialtyCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('First Name',
                          style: textTheme.bodyLarge!
                              .copyWith(color: AppColors.blackColor)),
                      SizedBox(
                        height: 8,
                      ),
                      CustomTextForm(
                        colorEnableBorder: textTheme.bodyLarge!.color,
                        hintText: 'First Name',
                        controller: firstNameCtrl,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Last Name',
                          style: textTheme.bodyLarge!
                              .copyWith(color: AppColors.blackColor)),
                      SizedBox(
                        height: 8,
                      ),
                      CustomTextForm(
                        colorEnableBorder: textTheme.bodyLarge!.color,
                        hintText: 'Last Name',
                        controller: lastNameCtrl,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Phone Number',
              style: textTheme.bodyLarge!.copyWith(color: AppColors.blackColor),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: AppColors.backgroundcardColor,
                    border: Border.all(color: AppColors.primaryColor),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        topLeft: Radius.circular(8)),
                  ),
                  child: Center(child: Text('+20')),
                )),
                Expanded(
                  flex: 3,
                  child: CustomTextForm(
                      colorEnableBorder: textTheme.bodyLarge!.color,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(8),
                          topRight: Radius.circular(8)),
                      hintText: '1234567890',
                      keyboardType: TextInputType.phone),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              'Date of Birth',
              style: textTheme.bodyLarge!.copyWith(color: AppColors.blackColor),
            ),
            const SizedBox(height: 8),
            CustomTextForm(
              colorEnableBorder: textTheme.bodyLarge!.color,
              hintText: 'Date of Birth',
              controller: dobCtrl,
              isReadOnly: true,
              onTap: () async {
                final now = DateTime.now();
                final picked = await showDatePicker(
                  context: context,
                  firstDate: DateTime(1900),
                  lastDate: DateTime(now.year, now.month, now.day),
                  initialDate: DateTime(now.year - 18, now.month, now.day),
                );
                if (picked != null) {
                  dobCtrl.text =
                      '${picked.year}-${picked.month.toString().padLeft(2, '0')}-${picked.day.toString().padLeft(2, '0')}';
                }
              },
            ),
            const SizedBox(height: 12),
            CustomDropdownButtonFormField(),
          ],
        ),
      ),
    );
  }
}
