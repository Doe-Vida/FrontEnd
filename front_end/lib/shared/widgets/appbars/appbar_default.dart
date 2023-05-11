import 'package:flutter/material.dart';
import 'package:front_end/shared/themes/app_colors.dart';
import 'package:front_end/shared/themes/app_text_styles.dart';

class MyAppBar extends AppBar {
  MyAppBar({
    super.key, 
    required String title,
    Widget? leading,
    List<Widget>? actions,
    Color? backgroundColor
  }) : super(
          title: Text(
            title, 
            style: AppTextStyles.regularHeader2.copyWith(color: backgroundColor == null ? AppColors.black : AppColors.white ),),
          leading: leading,
          actions: actions,
          backgroundColor: backgroundColor ?? AppColors.white 
        );
}
