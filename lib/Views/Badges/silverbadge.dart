import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:techrank/Views/utils/cards.dart';
import 'package:techrank/Views/utils/constrains.dart';
import 'package:techrank/Views/utils/head.dart';

class SilverBadge extends StatelessWidget {
  const SilverBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(),
      body: Container(
        color: balckcolor,
        padding: EdgeInsets.fromLTRB(2.h, 2.h, 2.h, 0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Technologies',
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 3.5.h,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(1.h, 2.h, 0, 0),
                  child: Align(
                    alignment: Alignment.topRight,
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
                Padding(
                  padding: EdgeInsets.fromLTRB(4.h, 2.h, 0, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
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
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(1.h, 2.h, 0, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
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
                Padding(
                  padding: EdgeInsets.fromLTRB(4.h, 2.h, 0, 0),
                  child: Align(
                    alignment: Alignment.topRight,
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
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(13.h, 2.h, 0, 0),
                  child: Align(
                    alignment: Alignment.topCenter,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
