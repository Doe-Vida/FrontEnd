import 'package:flutter/material.dart';
import 'package:front_end/constants/app_colors.dart';
import 'package:front_end/constants/app_icons.dart';
import 'package:front_end/constants/app_images.dart';
import 'package:front_end/views/pages/home/home_page.dart';
import '../dialogs/aptitude_test/first_test_aptitude_eligible.dart';
import '../dialogs/aptitude_test/test_aptitude_result.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int currentPageIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
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
              label: 'Doações',
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
              label: 'Relatos',
            ),
          ],
        ),
      ),
      body: <Widget>[
        Container(
          color: Colors.blueGrey,
          alignment: Alignment.center,
          child: TextButton(
              child: const Text('Page 1'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => const TestAptitudeResultDialog(imageName: AppImages.FIT_TEST_INELIGIBLE, description: "Infelizmente você está inapto(a) e não pode realizar a doação de sangue."));
              }),
        ),
        Container(
          color: Colors.pink,
          alignment: Alignment.center,
          child: TextButton(
              child: const Text('Page 2'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => const TestAptitudeResultDialog(imageName: AppImages.FIT_TEST_INELIGIBLE, description: "Infelizmente você está inapto(a) e não pode realizar a doação de sangue."));
              }),
        ),
        const HomePage(),
        Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: TextButton(
              child: const Text('Page 3'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => const TestAptitudeResultDialog(imageName: AppImages.FIT_TEST_CONGRATULATIONS, description: "Eba! Você está apto(a) e pode realizar a doação de sangue."));
              }),
        ),
       Container(
          color: Colors.orange,
          alignment: Alignment.center,
          child: TextButton(
              child: const Text('Page 4'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => const FirstTestAptitudeEligibleDialog());
              }),
        ),
      ][currentPageIndex],
    );
  }
}
