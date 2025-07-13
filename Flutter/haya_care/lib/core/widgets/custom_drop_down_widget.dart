import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:haya_care/core/theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class CustomDropDownWidget extends StatefulWidget {
  const CustomDropDownWidget({
    super.key,
    required this.onChanged,
    required this.content,
    required this.child,
    required this.colorIcon,
  });

  final ValueChanged<String> onChanged;
  final List<String> content;
  final Widget child;
  final Color colorIcon;

  @override
  State<CustomDropDownWidget> createState() => _CustomDropDownWidgetState();
}

class _CustomDropDownWidgetState extends State<CustomDropDownWidget> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      isExpanded: true,
      value: selectedValue,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 6, vertical: 14),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: AppColors.primaryColor, width: 1.5),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: AppColors.primaryColor, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(color: AppColors.primaryColor, width: 1.5),
        ),
      ),
      hint: widget.child,
      iconStyleData: IconStyleData(
        icon: Icon(
          Icons.arrow_drop_down,
          color: widget.colorIcon,
        ),
        iconSize: 30,
      ),
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      items: widget.content.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(
            item,
            style: AppTextStyles.font16Regular(context).copyWith(color: AppColors.lightBlack),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue;
        });
        widget.onChanged(newValue!);
      },
    );
  }
}
