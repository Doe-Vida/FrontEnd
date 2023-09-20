import 'package:flutter/material.dart';
import 'package:front_end/constants/app_colors.dart';
import 'package:front_end/constants/app_images.dart';
import 'package:front_end/views/widgets/buttons/custom_button_white.dart';

import '../../../constants/app_icons.dart';
import '../../../constants/app_text_styles.dart';

class FirstTestAptitudeEligibleDialog extends StatelessWidget {
  const FirstTestAptitudeEligibleDialog({
    super.key,
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
                  child: Image.asset(
                AppImages.FIT_TEST_CONGRATULATIONS,
                height: 200,
              )),
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
            "De acordo com o primeiro teste, você está apto(a) e pode doar. Deseja fazer o segundo para ter uma resposta mais exata?",
            style: AppTextStyles.regularHeader3,
            textAlign: TextAlign.center,
          )
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //TODO: CRIAR WIDGET PARA ESSES BOTÕES DE SIM E NÃO
            Container(
              width: 110,
              decoration: BoxDecoration(
                color: AppColors.WHITE,
                borderRadius: BorderRadius.circular(30),
                border: const Border.fromBorderSide(
                    BorderSide(color: AppColors.GRAY200))),
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('NÃO', style: AppTextStyles.regularBody2,),
              ),
            ),
            Container(
              width: 110, //TODO: CALCULAR DE ACORDO COM OT AMANHO DA TELA
              decoration: BoxDecoration(
                color: AppColors.PINK_PRIMARY,
                borderRadius: BorderRadius.circular(30)),
              child: TextButton(
                onPressed: () {
                  //abre o teste 2
                },
                child: Text('SIM', style: AppTextStyles.regularBody2.copyWith(color: AppColors.WHITE),),
              ),
            ),
          ],
        )
      ],
    );
  }
}
