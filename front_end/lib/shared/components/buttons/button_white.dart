import 'package:flutter/material.dart';
import 'package:front_end/shared/themes/app_colors.dart';
import 'package:front_end/shared/themes/app_text_styles.dart';

class ButtonWhite extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const ButtonWhite({
    Key? key,
    required this.text, 
    required this.onTap
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 35,
        width: 200,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(30),
          border: const Border.fromBorderSide(BorderSide(color: AppColors.gray300))
        ),
        child: Center( 
          child: Text(
            text,
            style: AppTextStyles.boldBody1.copyWith(color: AppColors.pinkPrimary)          
        ),)
      )
    );
    // return SizedBox(
    //     height: height,
    //     child: TextButton(
    //         onPressed: onPressed,
    //         child: Text(
    //           text,
    //           style: AppTextStyles.boldBody1
    //               .copyWith(color: AppColors.pinkPrimary),
    //         )));
  }
}
