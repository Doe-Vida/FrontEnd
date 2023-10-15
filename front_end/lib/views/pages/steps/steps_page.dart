import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:front_end/constants/app_text_styles.dart';
import 'package:front_end/views/widgets/appbars/custom_appbar.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_icons.dart';
import '../../../models/steps.dart';

class StepsPage extends StatefulWidget {
  const StepsPage({super.key});

  @override
  State<StepsPage> createState() => _StepsPageState();
}
class _StepsPageState extends State<StepsPage> {
  int current = 0;
  final CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Como funciona a doação",
        backgroundColor: AppColors.PINK_PRIMARY,
        iconLeft: AppIcons.arrowBack(AppColors.WHITE, 24),
        onPressedIconLeft: () => Navigator.pop(context),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            children: [
              CarouselSlider(
                carouselController: controller,
                items: stepsDonation.asMap().entries.map((entry) {
                  final step = entry.value;
                  return Column(
                    children: [
                      Image.asset(step.urlImage),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          step.title,
                          style: AppTextStyles.boldHeader2,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Text(
                        step.body,
                        style: AppTextStyles.regularHeader3,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 500,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      current = index;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: stepsDonation.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => controller.animateToPage(entry.key),
                    child: Container(
                      width: current == entry.key ? 13 : 10,
                      height: current == entry.key ? 13 : 10,
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (current == entry.key
                            ? AppColors.PINK_PRIMARY
                            : AppColors.GRAY300.withOpacity(0.6)),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
