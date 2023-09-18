import 'package:flutter/material.dart';

import '../../../constants/app_images.dart';

class UnfitTestDialog extends StatelessWidget {
  const UnfitTestDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      actions: [
        Image.asset(AppImages.FIT_TEST_UNFIT),
        Text("Poxa"),
        Text("Infelizmente você está inapto(a) e não pode realizar a doação de sangue.")
      ],
    );
  }
}