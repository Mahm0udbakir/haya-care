import 'package:flutter/material.dart';
import 'package:haya_care/core/theme/app_color.dart';

class CustomSwitchTile extends StatelessWidget {
  final String title;
  final ValueNotifier<bool> switchValue;
  final IconData? icon;

  const CustomSwitchTile({
    super.key,
    required this.title,
    required this.switchValue,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.grayColor,
          width: 1,
        ),
      ),
      child: ListTile(
        leading: icon != null
            ? Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 20,
                ),
              )
            : null,
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimary,
          ),
        ),
        trailing: ValueListenableBuilder<bool>(
          valueListenable: switchValue,
          builder: (context, value, _) {
            return Switch(
              value: value,
              onChanged: (newValue) {
                switchValue.value = newValue;
              },
              activeColor: AppColors.primaryColor,
              activeTrackColor: AppColors.primaryColor.withOpacity(0.3),
              inactiveThumbColor: Colors.grey,
              inactiveTrackColor: Colors.grey.withOpacity(0.3),
            );
          },
        ),
      ),
    );
  }
}
