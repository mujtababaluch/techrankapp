import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:techrank/Views/Badges/bronzebadge.dart';
import 'package:techrank/Views/Badges/expertbadge.dart';
import 'package:techrank/Views/Badges/goldbadge.dart';
import 'package:techrank/Views/Badges/silverbadge.dart';
import 'package:techrank/Views/utils/cards.dart';
import 'package:techrank/Views/utils/constrains.dart';
import 'package:techrank/Views/utils/head.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: MyAppBar(),
      body: Container(
        padding: EdgeInsets.only(right: 2.h, left: 2.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.h),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'EarnBadge',
                  style: GoogleFonts.poppins(
                      fontSize: 3.5.h, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          BronzeBadge(),
                          transition: Transition.fade,
                          duration: Duration(milliseconds: 500),
                        );
                      },
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
                      onTap: () {
                        Get.to(
                          SilverBadge(),
                          transition: Transition.fade,
                          duration: Duration(milliseconds: 500),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 4.h, top: 3.h),
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
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(
                          GoldBadge(),
                          transition: Transition.fade,
                          duration: Duration(milliseconds: 500),
                        );
                      },
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
                      onTap: () {
                        Get.to(
                          ExpertBadge(),
                          transition: Transition.fade,
                          duration: Duration(milliseconds: 500),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 4.h, top: 3.h),
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
            Padding(
              padding: EdgeInsets.only(top: 1.h),
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
              indent: 10, // empty space to the leading edge of divider.
              color:
                  Color(0xffCFD2CF), // The color to use when painting the line.
              height: 1.h, // The divider's height extent.
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 26.h,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(top: 2.h, left: 2.h),
                        child: Container(
                          child: Othercard(
                              Cardcolor: othercard,
                              Cardimage: leaderboard,
                              Textinfo: 'Leader-board'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(top: 2.h, left: 2.h),
                        child: Container(
                          child: Othercard(
                              Cardcolor: othercard,
                              Cardimage: badge,
                              Textinfo: 'Badges'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 2.h,
                          left: 2.h,
                        ),
                        child: Container(
                          child: Othercard(
                              Cardcolor: othercard,
                              Cardimage: certificate,
                              Textinfo: 'Certificate'),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: 2.h, left: 2.h, right: 1.h),
                        child: Container(
                          child: Othercard(
                              Cardcolor: othercard,
                              Cardimage: profile,
                              Textinfo: 'Profile'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}