import 'package:flutter/material.dart';

import '../../../constants/app_icons.dart';
import '../../../constants/app_text_styles.dart';

class TestAptitudeResultDialog extends StatelessWidget {
  final String imageName;
  final String description;

  const TestAptitudeResultDialog({
    super.key, 
    required this.imageName, 
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 10,
        content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Center(
                      child: Image.asset(imageName, height: 200,)
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: AppIcons.close(),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
              Text(
                description,
                style: AppTextStyles.regularHeader3,
                textAlign: TextAlign.center,
              )
            ],
        ));
  }
}
