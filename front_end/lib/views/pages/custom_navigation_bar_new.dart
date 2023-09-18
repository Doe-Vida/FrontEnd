import 'package:flutter/material.dart';
import 'package:front_end/constants/app_colors.dart';
import 'package:front_end/constants/app_icons.dart';
import 'package:front_end/views/pages/auth/login/login_screen.dart';
import 'package:front_end/views/pages/init/init_screen.dart';

import '../dialogs/aptitude_test/test_fit.dart';
import '../dialogs/aptitude_test/test_unfit.dart';

class CustomNavigationBarNew extends StatefulWidget {
  const CustomNavigationBarNew({super.key});

  @override
  State<CustomNavigationBarNew> createState() => _CustomNavigationBarNewState();
}

class _CustomNavigationBarNewState extends State<CustomNavigationBarNew> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: NavigationBar(
          height: 60,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: AppColors.PINK_SECOND.withOpacity(0.25),
          backgroundColor: AppColors.WHITE,
          selectedIndex: currentPageIndex,
          destinations: <Widget>[
            NavigationDestination(
              selectedIcon: AppIcons.cardsHeart(),
              icon: AppIcons.cardsHeartOutline(),
              label: 'Solicitação',
            ),
            NavigationDestination(
              selectedIcon: AppIcons.mapMarker(),
              icon: AppIcons.mapMarkerOutline(),
              label: 'Mapa',
            ),
            NavigationDestination(
              selectedIcon: AppIcons.home(),
              icon: AppIcons.homeOutline(),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: AppIcons.fileDocument(),
              icon: AppIcons.fileDocumentOutline(),
              label: 'Regras',
            ),
            NavigationDestination(
              selectedIcon: AppIcons.verified(),
              icon: AppIcons.verifiedOutline(),
              label: 'Histórias',
            ),
          ],
        ),
      ),
      body: <Widget>[
        const InitScreen(),
        const LoginScreen(),
        Container(
          color: Colors.pink,
          alignment: Alignment.center,
          child: TextButton(
            child: const Text('Page 1'), 
            onPressed: () 
            {
              showDialog(
                context: context,
                builder: (BuildContext context) => UnfitTestDialog()
              );
            }
          ),
        ),
        Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
    );
  }
}