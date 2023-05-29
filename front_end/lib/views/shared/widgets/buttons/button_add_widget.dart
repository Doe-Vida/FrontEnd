import 'package:flutter/material.dart';
import 'package:front_end/views/shared/themes/app_colors.dart';
import 'package:front_end/views/shared/themes/app_icons.dart';

class ButtonAddWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const ButtonAddWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: AppColors.cyan,
      child: AppIcons.add(),
    );
  }
}