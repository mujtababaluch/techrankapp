// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:techrank/Views/Badges/bronzebadge.dart';
import 'package:techrank/Views/Badges/expertbadge.dart';
import 'package:techrank/Views/Badges/goldbadge.dart';
import 'package:techrank/Views/Badges/silverbadge.dart';
import 'package:techrank/Views/profile.dart';
import 'package:techrank/Views/utils/cards.dart';
import 'package:techrank/Views/utils/constrains.dart';
import 'package:techrank/Views/utils/customshape.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: Container(
        height: 100.h,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: CustomPaint(
          painter: CurvePainter(),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 38.h,
                    width: 100.h,
                    decoration: BoxDecoration(
                      color: topbarbg,
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Image(
                        image: const AssetImage('assets/TechRank.png'),
                        height: 10.h,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),
                    child: Column(children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(top: 15.h),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () => Get.to(
                                      () => const BronzeBadge(),
                                      transition: Transition.fade,
                                      duration:
                                          const Duration(milliseconds: 500),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.only(top: 3.h),
                                      child: Mycard(
                                        Cardcolorone: red_card,
                                        Cardcolortwo: redcard,
                                        Cardimage: bronzebadge,
                                        Textinfo: 'Bronze Level',
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => Get.to(
                                      () => const SilverBadge(),
                                      transition: Transition.fade,
                                      duration:
                                          const Duration(milliseconds: 500),
                                    ),
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 2.h, top: 3.h),
                                      child: Mycard(
                                        Cardcolorone: yellow_card,
                                        Cardcolortwo: yellowcard,
                                        Cardimage: silverbadge,
                                        Textinfo: 'Silver Level',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () => Get.to(
                                      () => const GoldBadge(),
                                      transition: Transition.fade,
                                      duration:
                                          const Duration(milliseconds: 500),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.only(top: 3.h),
                                      child: Mycard(
                                        Cardcolorone: green_card,
                                        Cardcolortwo: greencard,
                                        Cardimage: goldbadge,
                                        Textinfo: 'Gold Level',
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => Get.to(
                                      () => const ExpertBadge(),
                                      transition: Transition.fade,
                                      duration:
                                          const Duration(milliseconds: 500),
                                    ),
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 2.h, top: 3.h),
                                      child: Mycard(
                                        Cardcolorone: blue_card,
                                        Cardcolortwo: bluecard,
                                        Cardimage: bluetick,
                                        Textinfo: 'Expert Level',
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 66.3.h),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'Others',
                            style: GoogleFonts.poppins(
                                fontSize: 3.h, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Divider(
                        thickness: 1, // thickness of the line
                        indent:
                            10, // empty space to the leading edge of divider.
                        color: const Color(
                            0xffCFD2CF), // The color to use when painting the line.
                        height: 1.h, // The divider's height extent.
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          height: 26.h,
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 2.h, left: 2.h),
                                  child: Othercard(
                                      Cardcolor: othercard,
                                      Cardimage: leaderboard,
                                      Textinfo: 'Leader-board'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 2.h, left: 2.h),
                                  child: Othercard(
                                      Cardcolor: othercard,
                                      Cardimage: badge,
                                      Textinfo: 'Badges'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 2.h,
                                    left: 2.h,
                                  ),
                                  child: Othercard(
                                      Cardcolor: othercard,
                                      Cardimage: certificate,
                                      Textinfo: 'Certificate'),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.to(
                                  () => const Profile(),
                                  transition: Transition.fade,
                                  duration: const Duration(milliseconds: 500),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 2.h, left: 2.h, right: 1.h),
                                  child: Othercard(
                                      Cardcolor: othercard,
                                      Cardimage: profile,
                                      Textinfo: 'Profile'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//Custom shape
