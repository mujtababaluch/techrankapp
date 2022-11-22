import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:techrank/Views/Technologies/silverBadge/appdev.dart';
import 'package:techrank/Views/Technologies/silverBadge/database.dart';
import 'package:techrank/Views/Technologies/silverBadge/office.dart';
import 'package:techrank/Views/Technologies/silverBadge/webdes.dart';
import 'package:techrank/Views/Technologies/silverBadge/webdev.dart';
import 'package:techrank/Views/utils/cards.dart';
import 'package:techrank/Views/utils/constrains.dart';
import 'package:techrank/Views/utils/head.dart';

class SilverBadge extends StatelessWidget {
  const SilverBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyBar(),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(1.h, 7.h, 1.h, 0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2.h,),
                        child: InkWell(
                          onTap: () => Get.to(
                            () => const YellowOffice(),
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
                      Padding(
                        padding: EdgeInsets.fromLTRB(3.h, 2.h, 0, 0),
                        child: InkWell(
                          onTap: () => Get.to(
                            () => const YellowWebdes(),
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
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2.h,),
                        child: InkWell(
                          onTap: () => Get.to(
                            () => const YellowWebdev(),
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
                        child: Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            onTap: () => Get.to(
                              () => const YellowDatabase(),
                              transition: Transition.fade,
                              duration: const Duration(milliseconds: 500),
                            ),
                            child: SizedBox(
                              width: 20.h,
                              child: Techcard(
                                Cardimage:
                                    const AssetImage('assets/database.png'),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2.h),
                        child: InkWell(
                          onTap: () => Get.to(
                            () => const YellowAppdev(),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
