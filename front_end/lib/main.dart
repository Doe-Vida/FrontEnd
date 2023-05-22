import 'package:flutter/material.dart';
import 'package:front_end/shared/components/cards/card_blood_type.dart';
import 'package:front_end/shared/themes/app_colors.dart';
import 'package:front_end/shared/themes/app_icons.dart';
import 'package:front_end/shared/components/appbars/appbar_default.dart';
import 'package:front_end/shared/components/buttons/button_add.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: AppColors.pinkPrimary,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int doadores = 0;

  void aumentar() {
    setState(() {
      doadores++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBarDefault(
          title: "Criar conta", 
          backgroundColor: AppColors.pinkPrimary,
          iconLeft: AppIcons.arrowBack,
          onPressedIconLeft: (){
            
          },
        ),
        body: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /*ButtonDefault(text: "Criar conta", onTap: () {}),
              ButtonDefault(text: "Henricao", onTap: () {}),
              ButtonDefault(text: "Carol", onTap: () {}),
              ButtonWhite(text: "Texto", onTap: () {}),
              Exemplo(text: doadores.toString(), onTap: aumentar),
              ButtonDefault(text: doadores.toString(), onTap: aumentar),*/
              Text(doadores.toString()),
              const CardBloodType(bloodType: "AB+", bloodDonors: "A+, AB+", bloodRecipients: "A+, A-, O+, O-")
            ],
          ),
        ),
        floatingActionButton: ButtonAdd(
          onPressed: aumentar,
        ));
  }
}
