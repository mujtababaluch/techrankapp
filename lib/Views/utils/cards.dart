import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:techrank/Views/utils/constrains.dart';

class Mycard extends StatelessWidget {
  final Color Cardcolorone;
  final Color Cardcolortwo;
  final AssetImage Cardimage;
  final String Textinfo;
  const Mycard({
    required this.Cardcolorone,
    required this.Cardcolortwo,
    required this.Cardimage,
    required this.Textinfo,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 21.h,
      width: 20.h,
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
              offset: Offset(3.0, 5.0)),
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
    required this.Cardcolor,
    required this.Cardimage,
    required this.Textinfo,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
              offset: Offset(3.0, 5.0)),
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

class stdcard extends StatelessWidget {
  // const stdcard({;
  //   //required this.Text
  // });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(1.h),
          height: 15.h,
          width: 100.w,
          decoration:  BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            borderRadius:  BorderRadius.circular(20.0),
            boxShadow: <BoxShadow>[
               BoxShadow(
                color: Color(0xff797979),
                blurRadius: 10.0,
                offset: new Offset(3.0, 5.0),
              ),
            ],
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 15.h,
              width: 20.w,
              child: CircleAvatar(
                  backgroundColor: Color.fromARGB(0, 255, 255, 255),
                  radius: 15.0,
                  child: Image(image: AssetImage("assets/man.png"))),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(top: 1.h, left: 20),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.h, left: 20.w),
                  child: Icon(Icons.person),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 1.h, left: 1.w),
                  child: Text(
                    'Name',
                    style: GoogleFonts.poppins(
                      fontSize: 2.5.h,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 4.h),
          child: Row(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 1.h, left: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.h, left: 20.w),
                        child: Icon(
                          Icons.badge_rounded,
                          color: Colors.grey[400],
                          size: 2.h,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.h, left: 1.w),
                        child: Text(
                          'Badge',
                          style: GoogleFonts.poppins(
                            fontSize: 1.7.h,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 1.h, left: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.h, left: 1.w),
                        child: Icon(Icons.biotech_rounded,
                            color: Colors.grey[400], size: 2.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.h, left: 1.w),
                        child: Text(
                          'Technology',
                          style: GoogleFonts.poppins(
                            fontSize: 1.7.h,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Row(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 8.h, left: 20.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.h, left: 20.w),
                    child: Icon(Icons.date_range_rounded,
                        color: Colors.grey[400], size: 2.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h, left: 1.w),
                    child: Text(
                      'Date',
                      style: GoogleFonts.poppins(
                        fontSize: 1.7.h,
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 8.h, left: 20.0),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 2.h, left: 5.w),
                    child: Icon(Icons.watch_later_rounded,
                        color: Colors.grey[400], size: 2.h),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.h, left: 1.w),
                    child: Text(
                      'Timer',
                      style: GoogleFonts.poppins(
                          fontSize: 1.7.h, color: Colors.grey[400]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ],
    );
  }
}

class Badgecard extends StatelessWidget {
  final Color Cardcolor;
  final String Cardtext;
  final AssetImage Cardimage;
  const Badgecard(
      {required this.Cardimage,
      required this.Cardcolor,
      required this.Cardtext});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 20.h,
      //width: 240.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          25.0,
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 1.0,
              blurRadius: 4,
              offset: Offset(4.0, 5.0)),
        ],
        color: Cardcolor,
      ),
      child: Column(
        children: [
          Container(
              child: Padding(
            padding: EdgeInsets.fromLTRB(3.w, 1.h, 3.w, 1.h),
            child: Image(
              image: Cardimage,
              height: 12.h,
            ),
          )),
          Align(
              alignment: Alignment.center,
              child: Text(
                Cardtext,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 2.h,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}

class EarnedBadgecard extends StatelessWidget {
  final Color Cardcolor;
  final String Cardtext;
  final AssetImage Cardimage;

  const EarnedBadgecard(
      {required this.Cardimage,
      required this.Cardcolor,
      required this.Cardtext});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 200.0,
      width: 240.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          25.0,
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.4),
              spreadRadius: 1.0,
              blurRadius: 4,
              offset: Offset(4.0, 5.0)),
        ],
        color: Cardcolor,
      ),
      child: Column(
        children: [
          Container(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Image(
              image: Cardimage,
              height: 100.0,
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  Cardtext,
                  style:
                      GoogleFonts.poppins(color: Colors.white, fontSize: 25.0),
                )),
          ),
        ],
      ),
    );
  }
}

class Techcard extends StatelessWidget {
  final AssetImage Cardimage;
  final String Textinfo;

  const Techcard({required this.Cardimage, required this.Textinfo});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 25.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          25.0,
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 1.0,
              blurRadius: 4,
              offset: Offset(4.0, 5.0)),
        ],
        color: Techycard,
      ),
      child: Column(
        children: [
          Container(
              child: Padding(
            padding: EdgeInsets.fromLTRB(0, 4.h, 0, 0),
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
