import 'package:flutter/material.dart';
import 'package:front_end/constants/app_colors.dart';
import 'package:front_end/views/widgets/appbars/custom_appbar.dart';

import '../../../constants/app_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PINK_PRIMARY,
      appBar: CustomAppBar(
        title: "Doe Vida",
        centerTitle: true,
        iconRight: AppIcons.bellRing(AppColors.WHITE, 24),
        onPressedIconRight: (){},
        backgroundColor: AppColors.PINK_PRIMARY,
        elevation: 0,
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}