import 'package:flutter/material.dart';
import 'package:front_end/constants/app_colors.dart';
import 'package:front_end/constants/app_images.dart';
import 'package:front_end/constants/app_text_styles.dart';
import 'package:front_end/views/widgets/appbars/custom_appbar.dart';
import 'package:intl/intl.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../constants/app_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "Caroline Souza";
  int qtdDonation = 5;
  String lastDonation = DateFormat('dd/MM/yyyy').format(DateTime.now());
  String bloodType = "O+";

  final List<String> images = [
    AppImages.FRASES_CONVEY_LOVE,
    AppImages.FRASES_DONATE_BLOOD_LIFE,
    AppImages.FRASES_DONATE_IS_GOOD,
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
        Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: IconButton(
            icon: AppIcons.personRounded(),
            onPressed: () {},
          ),
        ),
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
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: AppColors.WHITE),
                  ),
                  Column(
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
            Stack(
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
                  margin: EdgeInsets.only(top: 15),
                  width: double.maxFinite,
                  height: screenSize.height * 0.60,
                  color: AppColors.WHITE,
                  child: Column(
                    children: [
                      //last donation & blood type
                      Row(
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

                      //buttons
                      Row(
                        children: [
                          Container(
                            width: screenSize.width * 0.3,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  offset: const Offset(0, 3),
                                  blurRadius: 5,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                AppIcons.fileDocument(AppColors.GRAY25, 70),
                                Text(
                                  "Teste aptidão",
                                  style: AppTextStyles.regularHeader2
                                      .copyWith(color: AppColors.GRAY25),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: screenSize.width * 0.4,
                            height: 13,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                AppIcons.fileDocument(AppColors.GRAY25, 70),
                                Text(
                                  "Passo a passo",
                                  style: AppTextStyles.regularHeader2
                                      .copyWith(color: AppColors.GRAY25),
                                )
                              ],
                            ),
                          )
                        ],
                      ),

                      Text("Inspire-se", style: AppTextStyles.boldHeader2),

                      //carousel
                      CarouselSlider(
                        items: images.map((String image) {
                          return Container(
                            margin: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              image: DecorationImage(
                                image: NetworkImage(image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        }).toList(),
                        options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          enlargeCenterPage: true,
                          viewportFraction: 0.8,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
