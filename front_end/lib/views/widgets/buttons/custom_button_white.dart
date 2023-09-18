import 'package:flutter/material.dart';
import 'package:front_end/constants/app_colors.dart';
import 'package:front_end/constants/app_text_styles.dart';

class CustomButtonWhite extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final EdgeInsetsGeometry? margin;
  const CustomButtonWhite(
      {Key? key, required this.text, required this.onTap, this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
            height: 35,
            width: 200,
            margin: margin,
            decoration: BoxDecoration(
                color: AppColors.WHITE,
                borderRadius: BorderRadius.circular(30),
                border: const Border.fromBorderSide(
                    BorderSide(color: AppColors.GRAY300))),
            child: Center(
              child: Text(text,
                  style: AppTextStyles.boldBody1
                      .copyWith(color: AppColors.PINK_PRIMARY)),
            )));
  }
}
