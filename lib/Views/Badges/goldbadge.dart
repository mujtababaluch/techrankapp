import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:techrank/Views/Technologies/goldbadge/office.dart';
import 'package:techrank/Views/Technologies/goldbadge/webdes.dart';
import 'package:techrank/Views/utils/cards.dart';
import 'package:techrank/Views/utils/constrains.dart';
import 'package:techrank/Views/utils/head.dart';

class GoldBadge extends StatelessWidget {
  const GoldBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(2.h, 7.h, 2.h, 0),
        child: Column(
          children: [
            //Align(
            // alignment: Alignment.topLeft,
            //   child: Text(
            //     'Technologies',
            //     style: GoogleFonts.poppins(
            //         color: Colors.black,
            //         fontSize: 3.5.h,
            //         fontWeight: FontWeight.w600),
            //   ),
            // )

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(1.h, 2.h, 0, 0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        Get.to(
                          GreenOffice(),
                          transition: Transition.fade,
                          duration: Duration(milliseconds: 500),
                        );
                      },
                      child: Container(
                        width: 20.h,
                        child: Techcard(
                          Cardimage: const AssetImage('assets/office.png'),
                          Textinfo: 'Office',
                          Cardcolorone: whitecolor,
                          Cardcolortwo: greycolor,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(4.h, 2.h, 0, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        Get.to(
                          GreenWebdes(),
                          transition: Transition.fade,
                          duration: Duration(milliseconds: 500),
                        );
                      },
                      child: Container(
                        width: 20.h,
                        child: Techcard(
                          Cardimage: const AssetImage('assets/design.png'),
                          Textinfo: 'Web-Design',
                          Cardcolorone: whitecolor,
                          Cardcolortwo: greycolor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(1.h, 2.h, 0, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 20.h,
                        child: Techcard(
                          Cardimage: const AssetImage('assets/coding.png'),
                          Textinfo: 'Web-dev',
                          Cardcolorone: whitecolor,
                          Cardcolortwo: greycolor,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(4.h, 2.h, 0, 0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 20.h,
                        child: Techcard(
                          Cardimage: const AssetImage('assets/database.png'),
                          Textinfo: 'DataBase',
                          Cardcolorone: whitecolor,
                          Cardcolortwo: greycolor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(13.h, 2.h, 0, 0),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 20.h,
                        child: Techcard(
                          Cardimage: const AssetImage('assets/app.png'),
                          Textinfo: 'App-Dev',
                          Cardcolorone: whitecolor,
                          Cardcolortwo: greycolor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
