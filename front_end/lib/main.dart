import 'package:flutter/material.dart';
import 'package:front_end/shared/themes/app_colors.dart';
import 'package:front_end/shared/themes/app_text_styles.dart';
import 'package:front_end/shared/widgets/buttons/button_add.dart';
import 'package:front_end/shared/widgets/buttons/button_default.dart';
import 'package:front_end/shared/widgets/buttons/button_white.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.cyan,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           ButtonDefault(text: "Criar conta", onTap: (){}),

           ButtonWhite(text: "Texto", onTap: (){}),
          
            Text(
              'You have pushed the button this many times:', style: AppTextStyles.regularHeader1,
            ),
          ],
        ),
      ),
      floatingActionButton: ButtonAdd(onPressed: (){},)
    );
  }
}
