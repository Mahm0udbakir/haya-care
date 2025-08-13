import 'package:flutter/material.dart';
import 'package:haya_care/core/theme/app_color.dart';

class CustomDropdownButtonFormField extends StatefulWidget {
  const CustomDropdownButtonFormField({super.key});

  @override
  State<CustomDropdownButtonFormField> createState() =>
      _CustomDropdownButtonFormFieldState();
}

class _CustomDropdownButtonFormFieldState
    extends State<CustomDropdownButtonFormField> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    String? gender;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
          style: textTheme.bodyLarge!.copyWith(color: AppColors.blackColor),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: gender,
          decoration: const InputDecoration(
              hintText: 'Gender',
              fillColor: AppColors.backgroundcardColor,
              filled: true),
          items: const [
            DropdownMenuItem(
              value: 'Male',
              child: Text(
                'Male',
              ),
            ),
            DropdownMenuItem(value: 'Female', child: Text('Female')),
          ],
          onChanged: (v) => setState(() => gender = v),
          validator: (v) => v == null || v.isEmpty ? 'Gender مطلوب' : null,
        ),
      ],
    );
  }
}
