import 'package:flutter/material.dart';
import 'package:front_end/constants/app_colors.dart';
import 'package:front_end/constants/app_icons.dart';

class CustomButtonAdd extends StatelessWidget {
  final VoidCallback onPressed;
  const CustomButtonAdd({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: AppColors.CYAN,
      child: AppIcons.add(),
    );
  }
}
