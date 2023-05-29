import 'package:flutter/material.dart';
import 'package:front_end/views/shared/themes/app_colors.dart';
import 'package:front_end/views/shared/themes/app_text_styles.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final Color? backgroundColor;
  final Widget? iconLeft;
  final Widget? iconRight;
  final VoidCallback? onPressedIconRight;
  final VoidCallback? onPressedIconLeft;
  const AppBarWidget({
    super.key, 
    required this.title, 
    this.backgroundColor, 
    this.iconLeft, 
    this.iconRight, 
    this.onPressedIconLeft, 
    this.onPressedIconRight
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title, 
        style: AppTextStyles.regularHeader2.copyWith(color: backgroundColor == null ? AppColors.black : AppColors.white ),),
      leading: iconLeft == null ? null : IconButton(icon: iconLeft!, onPressed: onPressedIconLeft,),
      actions: iconRight == null ? null : <Widget>[
            IconButton(onPressed: onPressedIconRight, icon: iconRight!)
          ],
      backgroundColor: backgroundColor ?? AppColors.white 
    );
  }
}