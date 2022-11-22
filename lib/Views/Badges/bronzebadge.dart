import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:techrank/Views/Technologies/bronzeBadge/appdev.dart';
import 'package:techrank/Views/Technologies/bronzeBadge/database.dart';
import 'package:techrank/Views/Technologies/bronzeBadge/office.dart';
import 'package:techrank/Views/Technologies/bronzeBadge/webdes.dart';
import 'package:techrank/Views/Technologies/bronzeBadge/webdev.dart';
import 'package:techrank/Views/utils/cards.dart';
import 'package:techrank/Views/utils/constrains.dart';
import 'package:techrank/Views/utils/head.dart';

class BronzeBadge extends StatelessWidget {
  const BronzeBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyBar(),
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
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(1.h, 2.h, 0, 0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          onTap: () => Get.to(
                            () => const RedOffice(),
                            transition: Transition.fade,
                            duration: const Duration(milliseconds: 500),
                          ),
                          child: SizedBox(
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
                      padding: EdgeInsets.fromLTRB(3.h, 2.h, 0, 0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: InkWell(
                          onTap: () => Get.to(
                            () => const RedWebdes(),
                            transition: Transition.fade,
                            duration: const Duration(milliseconds: 500),
                          ),
                          child: SizedBox(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(1.h, 2.h, 0, 0),
                      child: InkWell(
                        onTap: () => Get.to(
                          () => const RedWebdev(),
                          transition: Transition.fade,
                          duration: const Duration(milliseconds: 500),
                        ),
                        child: SizedBox(
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
                    Padding(
                      padding: EdgeInsets.fromLTRB(3.h, 2.h, 0, 0),
                      child: InkWell(
                        onTap: () => Get.to(
                          () => const RedDatabase(),
                          transition: Transition.fade,
                          duration: const Duration(milliseconds: 500),
                        ),
                        child: SizedBox(
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
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: InkWell(
                        onTap: () => Get.to(
                          () => const RedAppdev(),
                          transition: Transition.fade,
                          duration: const Duration(milliseconds: 500),
                        ),
                        child: SizedBox(
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
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
