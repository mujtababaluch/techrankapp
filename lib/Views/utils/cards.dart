// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';

class Mycard extends StatelessWidget {
  final Color Cardcolorone;
  final Color Cardcolortwo;
  final AssetImage Cardimage;
  final String Textinfo;
  const Mycard({
    super.key,
    required this.Cardcolorone,
    required this.Cardcolortwo,
    required this.Cardimage,
    required this.Textinfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 21.h,
      width: 19.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Cardcolorone, Cardcolortwo],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(
          20.0,
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.4),
              //spreadRadius: 1.0,
              blurRadius: 5,
              offset: const Offset(3.0, 5.0)),
        ],
      ),
      child: Column(
        children: [
          Container(
              child: Padding(
            padding: EdgeInsets.fromLTRB(0, 1.h, 0, 0),
            child: Image(
              image: Cardimage,
              height: 10.h,
            ),
          )),
          Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(1.h, 1.h, 1.h, 0),
              child: Text(Textinfo,
                  style: GoogleFonts.poppins(
                      fontSize: 2.2.h,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 1.h),
            child: Icon(
              Icons.arrow_forward,
              size: 3.h,
              color: Colors.white,
            ),
          ),
          // Container(
          //   child: Padding(
          //     padding: EdgeInsets.only(top: 1.h),
          //     child: Text(
          //       'Score Minimium 80% ',
          //       style: GoogleFonts.poppins(
          //           fontSize: 2.h,
          //           color: Colors.white,
          //           fontWeight: FontWeight.bold),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}

class Othercard extends StatelessWidget {
  final Color Cardcolor;
  final AssetImage Cardimage;
  final String Textinfo;
  const Othercard({
    super.key,
    required this.Cardcolor,
    required this.Cardimage,
    required this.Textinfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 21.h,
      width: 18.h,
      decoration: BoxDecoration(
        color: Cardcolor,
        borderRadius: BorderRadius.circular(
          20.0,
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.4),
              //spreadRadius: 1.0,
              blurRadius: 5,
              offset: const Offset(3.0, 5.0)),
        ],
      ),
      child: Column(
        children: [
          Container(
              child: Padding(
            padding: EdgeInsets.fromLTRB(0, 2.h, 0, 0),
            child: Image(
              image: Cardimage,
              height: 10.h,
            ),
          )),
          Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(1.h, 1.h, 1.h, 0),
              child: Text(Textinfo,
                  style: GoogleFonts.poppins(
                      fontSize: 2.2.h,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold)),
            ),
          ),

          // Container(
          //   child: Padding(
          //     padding: EdgeInsets.only(top: 1.h),
          //     child: Text(
          //       'Score Minimium 80% ',
          //       style: GoogleFonts.poppins(
          //           fontSize: 2.h,
          //           color: Colors.white,
          //           fontWeight: FontWeight.bold),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}

class Techcard extends StatelessWidget {
  final AssetImage Cardimage;
  final String Textinfo;
  final Color Cardcolorone;
  final Color Cardcolortwo;

  const Techcard(
      {super.key,
      required this.Cardimage,
      required this.Textinfo,
      required this.Cardcolorone,
      required this.Cardcolortwo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22.5.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Cardcolorone, Cardcolortwo],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
        borderRadius: BorderRadius.circular(
          25.0,
        ),
        boxShadow: const [
          BoxShadow(
              color: Colors.black54,
              spreadRadius: 1.0,
              blurRadius: 2,
              offset: Offset(1.0, 2.0)),
        ],
      ),
      child: Column(
        children: [
          Container(
              child: Padding(
            padding: EdgeInsets.fromLTRB(0, 2.h, 0, 0),
            child: Image(
              image: Cardimage,
              height: 12.h,
            ),
          )),
          Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 2.h, 0, 0),
              child: Text(Textinfo,
                  style: GoogleFonts.poppins(
                      fontSize: 2.h,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}

class Modulecard extends StatelessWidget {
  final AssetImage Cardimage;
  final String Textinfo;

  const Modulecard({
    super.key,
    required this.Cardimage,
    required this.Textinfo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22.5.h,
      decoration: BoxDecoration(
        border: Border.all(width: 0.5.h, color: Colors.black26),
        borderRadius: BorderRadius.circular(
          15.0,
        ),
      ),
      child: Column(
        children: [
          Container(
              child: Padding(
            padding: EdgeInsets.fromLTRB(0, 2.h, 0, 0),
            child: Image(
              image: Cardimage,
              height: 10.h,
            ),
          )),
          Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 2.h, 0, 0),
              child: Text(Textinfo,
                  style: GoogleFonts.poppins(
                      fontSize: 2.h,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
