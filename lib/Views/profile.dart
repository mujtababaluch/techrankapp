// ignore_for_file: sized_box_for_whitespace

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:techrank/Views/utils/constrains.dart';
import 'package:getwidget/getwidget.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? pickedImage;

  void imagePickerOption() {
    Get.bottomSheet(
      SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: 20.h,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.h, bottom: 6.h, left: 20.w),
                  child: GestureDetector(
                    onTap: () {
                      pickImage(ImageSource.camera);
                    },
                    child: Container(
                      width: 12.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(Icons.camera_alt_rounded),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.h, bottom: 6.h, left: 10.w),
                  child: InkWell(
                    onTap: () {
                      pickImage(ImageSource.gallery);
                    },
                    child: Container(
                      padding: EdgeInsets.all(1.h),
                      width: 12.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(
                        Icons.collections_rounded,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.h, bottom: 6.h, left: 10.w),
                  child: InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: 12.w,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(Icons.close_rounded),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  pickImage(ImageSource imageType) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageType);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });

      Get.back();
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 100.h,
        child: CustomPaint(
          child: Stack(
            children: [
              Container(
                height: 39.h,
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
                padding: EdgeInsets.fromLTRB(1.h, 4.h, 0, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () => Get.back(),
                    icon: Icon(Icons.arrow_back_ios,
                        color: Colors.white, size: 2.5.h),
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
              Padding(
                padding: EdgeInsets.fromLTRB(0, 13.h, 2.h, 0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: GestureDetector(
                    onTap: () => imagePickerOption(),
                    child: Container(
                      height: 18.h,
                      width: 37.w,
                      decoration: BoxDecoration(
                        color: topbarbg,
                        border: Border.all(
                          color: Colors.black,
                          width: 0.2.w,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                      child: SizedBox(
                        height: 15.h,
                        width: 15.w,
                        child: CircleAvatar(
                          backgroundColor: topbarbg,
                          child: ClipOval(
                              child: pickedImage != null
                                  ? Image.file(
                                      pickedImage!,
                                      height: 60.h,
                                      width: 100.w,
                                      fit: BoxFit.cover,
                                    )
                                  : Image(
                                      image: const AssetImage("assets/man.png"),
                                      height: 60.h,
                                      width: 100.w,
                                      fit: BoxFit.cover,
                                    )),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 33.h, 0, 0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'Username',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 2.5.h,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5.w, 45.h, 0, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(0.5.h),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                              width: 0.5.w,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(100),
                            ),
                          ),
                          child: Align(
                              child: Icon(
                            Icons.email_outlined,
                            size: 3.h,
                          )),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: 2.w,
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'username@gmail.com',
                                  style: GoogleFonts.poppins(
                                    color: Colors.black,
                                    fontSize: 2.h,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2.h),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(0.5.h),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5.w,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                                child: Align(
                                    child: Icon(
                                  Icons.phone_android,
                                  size: 3.h,
                                )),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 2.w,
                                    ),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        '0317-1199935',
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 2.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2.h),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(0.5.h),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.black,
                                    width: 0.5.w,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                ),
                                child: Align(
                                    child: Icon(
                                  Icons.school_rounded,
                                  size: 3.h,
                                )),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 2.w,
                                    ),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Qualification',
                                        style: GoogleFonts.poppins(
                                          color: Colors.black,
                                          fontSize: 2.h,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2.h, left: 5.h),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: GFButton(
                              size: GFSize.LARGE,
                              onPressed: () => {},
                              text: "Edit Profile",
                              color: topbarbg,
                              textColor: Colors.white,
                              shape: GFButtonShape.standard,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2.8.h, left: 10.h),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: GFButton(
                              size: GFSize.LARGE,
                              onPressed: () => {},
                              text: "Logout",
                              color: topbarbg,
                              textColor: Colors.white,
                              shape: GFButtonShape.standard,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
