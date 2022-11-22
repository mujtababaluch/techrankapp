// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:techrank/Views/utils/constrains.dart';

class MyAppBar extends StatelessWidget implements PreferredSize {
  var check = false;

  MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(8.h, 10.h),
      child: AppBar(
        //Search //

        // actions: [
        //   Padding(
        //     padding: EdgeInsets.only(right: 1.h, top: 1.h),
        //     child: IconButton(
        //         onPressed: () =>
        //             showSearch(context: context, delegate: Search()),
        //         icon: Icon(
        //           Icons.search,
        //           size: 5.h,
        //         )),
        //   )
        // ],

        elevation: 0,
        backgroundColor: topbarbg,
        title: Align(
          alignment: Alignment.center,
          child: Image(
            image: const AssetImage('assets/TechRank.png'),
            height: 50.h,
            width: 60.w,
          ),
        ),
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(
        8.h,
      );
}

class MyBar extends StatelessWidget implements PreferredSize {
  const MyBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(8.h, 10.h),
      child: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 1.h, top: 1.h),
            child: Icon(
              color: topbarbg,
              Icons.search,
              size: 5.h,
            ),
          )
        ],
        backgroundColor: topbarbg,
        title: Align(
          alignment: Alignment.center,
          child: Image(
            image: const AssetImage('assets/TechRank.png'),
            height: 50.h,
            width: 60.w,
          ),
        ),
      ),
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(8.h);
}
