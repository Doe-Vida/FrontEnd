import 'package:flutter/material.dart';
import 'package:front_end/constants/app_images.dart';
import 'package:front_end/constants/app_text_styles.dart';
import 'package:front_end/constants/app_colors.dart';

class CardBloodType extends StatelessWidget {
  final String bloodType;
  final String bloodDonors;
  final String bloodRecipients;
  final EdgeInsetsGeometry? margin;
  const CardBloodType(
      {super.key,
      required this.bloodType,
      required this.bloodDonors,
      required this.bloodRecipients,
      this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.maxFinite,
      height: 90,
      margin: margin,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.GRAY400, width: 2),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(AppImages.PINK_HEART),
              Text(
                bloodType,
                style:
                    AppTextStyles.boldHeader1.copyWith(color: AppColors.WHITE),
              )
            ],
          ),
          Container(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Doa para: $bloodDonors",
                style: AppTextStyles.regularHeader3,
              ),
              Text(
                "Recebe de: $bloodRecipients",
                style: AppTextStyles.regularHeader3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
