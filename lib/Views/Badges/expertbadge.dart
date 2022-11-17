import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:techrank/Views/utils/head.dart';

class ExpertBadge extends StatelessWidget {
  const ExpertBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(),
      body: Container(
          padding: EdgeInsets.fromLTRB(2.h, 2.h, 2.h, 0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Technologies',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 3.5.h,
                      fontWeight: FontWeight.w600),
                ),
              )
            ],
          )),
    );
  }
}
