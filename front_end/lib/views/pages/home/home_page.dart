import 'package:flutter/material.dart';
import 'package:front_end/constants/app_colors.dart';
import 'package:front_end/constants/app_images.dart';
import 'package:front_end/constants/app_routes.dart';
import 'package:front_end/constants/app_text_styles.dart';
import 'package:front_end/views/widgets/appbars/custom_appbar.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:intl/intl.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../constants/app_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //https://w7.pngwing.com/pngs/290/442/png-transparent-minions-bob-illustration-bob-the-minion-kevin-the-minion-stuart-the-minion-desktop-minions-paradise-youtube-mobile-phones-stuart-the-minion-kevin-the-minion.png
  String imageUrl =
'data:image/jpeg;base64,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';  
  String name = "Caroline Souza";
  int qtdDonation = 5;
  String lastDonation = DateFormat('dd/MM/yyyy').format(DateTime.now());
  String bloodType = "O+";

  final List<String> images = [
    AppImages.FRASES_DONATE_BLOOD_LIFE,
    AppImages.FRASES_DONATE_IS_GOOD,
    AppImages.FRASES_CONVEY_LOVE,
  ];

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.PINK_PRIMARY,
      appBar: CustomAppBar(
        title: "Doe Vida",
        centerTitle: true,
        iconRight: AppIcons.bellRing(AppColors.WHITE, 24),
        onPressedIconRight: () {},
        backgroundColor: AppColors.PINK_PRIMARY,
        elevation: 0,
      ),
      body: Stack(children: [
        Column(
          children: [
            //person informations
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 85,
                    height: 85,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.WHITE, width: 3)),
                    child: ClipOval(
                        child: imageUrl != ''
                            ? Image.network(
                                imageUrl,
                                fit: BoxFit.cover,
                              )
                            : Image.asset(AppImages.USER_WITHOUT_IMAGE)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: AppTextStyles.boldHeader2
                            .copyWith(color: AppColors.WHITE),
                      ),
                      Text(
                        "$qtdDonation doações realizadas",
                        style: AppTextStyles.regularHeader2
                            .copyWith(color: AppColors.WHITE),
                      )
                    ],
                  )
                ],
              ),
            ),

            Expanded(
              child: Stack(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 80,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(30)),
                        color: AppColors.WHITE),
                    transform: Matrix4.rotationZ(-0.04),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    width: double.maxFinite,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15)),
                      color: AppColors.WHITE,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //last donation & blood type
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    lastDonation,
                                    style: AppTextStyles.regularHeader3
                                        .copyWith(color: AppColors.GRAY25),
                                  ),
                                  Text(
                                    "Última doação",
                                    style: AppTextStyles.regularHeader3
                                        .copyWith(color: AppColors.GRAY25),
                                  )
                                ],
                              ),
                              Container(
                                width: 1,
                                height: 35,
                                color: AppColors.GRAY200,
                              ),
                              Column(
                                children: [
                                  Text(
                                    bloodType,
                                    style: AppTextStyles.regularHeader3
                                        .copyWith(color: AppColors.GRAY25),
                                  ),
                                  Text(
                                    "Tipo sanguíneo",
                                    style: AppTextStyles.regularHeader3
                                        .copyWith(color: AppColors.GRAY25),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),

                        //buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ButtonHome(
                                text: "Teste aptidão",
                                icon:
                                    AppIcons.documentSign(AppColors.GRAY25, 70),
                                onTap: () {}),
                            ButtonHome(
                                text: "Passo a passo",
                                icon: AppIcons.test(AppColors.GRAY25, 70),
                                onTap: () => Navigator.pushNamed(context, AppRoutes.stepsPage))
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Inspire-se",
                                  style: AppTextStyles.boldHeader2)),
                        ),

                        //carousel
                        CarouselSlider(
                          items: images.map((String image) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: AppColors.GRAY400),
                                image: DecorationImage(
                                    image: AssetImage(image),
                                    fit: BoxFit.cover),
                              ),
                            );
                          }).toList(),
                          options: CarouselOptions(
                            height: 150,
                            autoPlay: true,
                            aspectRatio: 16 / 9,
                            enlargeCenterPage: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: 55,
            height: 45,
            margin: const EdgeInsets.only(top: 90, right: 35),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.WHITE,
              boxShadow: [
                BoxShadow(
                    color: AppColors.GRAY300.withOpacity(0.6),
                    blurRadius: 4,
                    offset: const Offset(1, 4) // changes position of shadow
                    ),
              ],
            ),
            child: IconButton(
              icon: AppIcons.personRounded(AppColors.PINK_PRIMARY, 40),
              onPressed: () {},
            ),
          ),
        ),
      ]),
    );
  }
}

class ButtonHome extends StatelessWidget {
  final String text;
  final Iconify icon;
  final VoidCallback onTap;
  const ButtonHome(
      {super.key, required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding:
            const EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.GRAY400),
          color: AppColors.WHITE,
          boxShadow: const [
            BoxShadow(
                color: AppColors.GRAY400,
                blurRadius: 3,
                offset: Offset(5, 6) // changes position of shadow
                ),
          ],
        ),
        child: Column(
          children: [
            icon,
            Container(
              height: 10,
            ),
            Text(
              text,
              style:
                  AppTextStyles.regularHeader3.copyWith(color: AppColors.GRAY25),
            )
          ],
        ),
      ),
    );
  }
}
