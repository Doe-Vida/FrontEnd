import 'package:flutter/material.dart';
import 'package:front_end/constants/app_colors.dart';
import 'package:front_end/constants/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final EdgeInsetsGeometry? margin;
  const CustomButton(
      {super.key, required this.text, required this.onTap, this.margin});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: double.maxFinite,
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: AppColors.PINK_PRIMARY,
        ),
        child: Center(
          child: Text(
            text.toUpperCase(),
            style: AppTextStyles.regularBody1.copyWith(color: AppColors.WHITE),
          ),
        ),
      ),
    );
  }
}

class Exemplo extends InkWell {
  Exemplo({super.key, required String text, required VoidCallback onTap})
      : super(
          onTap: onTap,
          child: Container(
            height: 40,
            width: double.maxFinite,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: AppColors.PINK_PRIMARY,
            ),
            child: Center(
              child: Text(
                text.toUpperCase(),
                style:
                    AppTextStyles.regularBody1.copyWith(color: AppColors.WHITE),
              ),
            ),
          ),
        );
}
