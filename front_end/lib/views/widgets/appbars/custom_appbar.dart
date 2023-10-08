import 'package:flutter/material.dart';
import 'package:front_end/constants/app_colors.dart';
import 'package:front_end/constants/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool? centerTitle;
  final double? elevation;
  final Color? backgroundColor;
  final Widget? iconLeft;
  final Widget? iconRight;
  final VoidCallback? onPressedIconRight;
  final VoidCallback? onPressedIconLeft;
  const CustomAppBar(
      {super.key,
      required this.title,
      this.centerTitle,
      this.elevation,
      this.backgroundColor,
      this.iconLeft,
      this.iconRight,
      this.onPressedIconLeft,
      this.onPressedIconRight});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          title,
          style: AppTextStyles.regularHeader2.copyWith(
              color:
                  backgroundColor == null ? AppColors.BLACK : AppColors.WHITE),
        ),
        centerTitle: centerTitle ?? false,
        leading: iconLeft == null
            ? null
            : IconButton(
                icon: iconLeft!,
                onPressed: onPressedIconLeft,
              ),
        actions: iconRight == null
            ? null
            : <Widget>[
                IconButton(onPressed: onPressedIconRight, icon: iconRight!)
              ],
        backgroundColor: backgroundColor ?? AppColors.WHITE,
        elevation: elevation ?? 5,
        shadowColor: AppColors.GRAY300,
        automaticallyImplyLeading: false,
    );
  }
}
