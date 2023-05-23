import 'package:flutter/material.dart';
import 'package:front_end/shared/components/buttons/button_default.dart';
import 'package:front_end/shared/components/cards/card_blood_type.dart';
import 'package:front_end/shared/components/textboxes/textbox_default.dart';
import 'package:front_end/shared/themes/app_colors.dart';
import 'package:front_end/shared/themes/app_icons.dart';
import 'package:front_end/shared/components/appbars/appbar_default.dart';
import 'package:front_end/shared/components/buttons/button_add.dart';

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
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final dateController = TextEditingController();

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
        ),
        body: Center(
          
          child: Form( //acessa todos os métodos de validação
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextBoxWidget(
                  controller: emailController, 
                  hintText: "Email", 
                  keyboardType: TextInputType.emailAddress,  
                  margin: const EdgeInsets.all(20),
                  //prefixIcon: AppIcons.mail,
                ),

                /*TextBoxWidget(
                  controller: dateController, 
                  hintText: "Data nascimento", 
                  keyboardType: TextInputType.emailAddress,  
                  margin: const EdgeInsets.all(20),
                ),*/

                ButtonDefault(text: "Entrar", onTap: (){
                    final form = formKey.currentState!;

                    if (form.validate())
                    {
                        final email = emailController.text;
                        ScaffoldMessenger.of(context)
                        ..removeCurrentSnackBar()
                        ..showSnackBar(SnackBar(content: Text('Email: $email')));
                    }
                }),

                //Text(doadores.toString()),
                //const CardBloodType(bloodType: "AB+", bloodDonors: "A+, AB+", bloodRecipients: "A+, A-, O+, O-")
              ],
            ),
          ),
        ),
        floatingActionButton: ButtonAdd(
          onPressed: aumentar,
        ));
  }
}
