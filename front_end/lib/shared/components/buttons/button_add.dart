import 'package:flutter/material.dart';
import 'package:front_end/shared/themes/app_colors.dart';
import 'package:front_end/shared/themes/app_icons.dart';

class ButtonAdd extends StatelessWidget {
  final VoidCallback onPressed;
  const ButtonAdd({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: AppColors.cyan,
      child: AppIcons.add(),
    );
  }
}