import 'package:flutter/material.dart';
import 'package:front_end/shared/themes/app_colors.dart';
import 'package:front_end/shared/themes/app_text_styles.dart';

class ButtonDefault extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const ButtonDefault({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell
    (
      onTap: onTap,
      child: Container(
        height: 40,
        width: double.maxFinite,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration (
          borderRadius: BorderRadius.circular(32),
          color: AppColors.pinkPrimary,
        ),
        child: Center(
          child: Text(
            text.toUpperCase(), 
            style: AppTextStyles.regularBody1.copyWith(color: AppColors.white), 
          ),
        ),
      ),
    );
  }
}