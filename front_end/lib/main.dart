import 'package:flutter/material.dart';
import 'package:front_end/shared/themes/app_colors.dart';
import 'package:front_end/shared/themes/app_icons.dart';
import 'package:front_end/shared/themes/app_text_styles.dart';
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
           AppIcons.arrowDropDown,
           AppIcons.verified,
           AppIcons.bellRing,
           Text(
              'You have pushed the button this many times:', style: AppTextStyles.boldHeader1,
            ),
            Text(
              'You have pushed the button this many times:', style: AppTextStyles.regularHeader1,
            ),
            Text(
              '$_counter',
              style: AppTextStyles.regularHeader1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: AppColors.pinkPrimary,
        child: AppIcons.mapMarker,
      ),
    );
  }
}
