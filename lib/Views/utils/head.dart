import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:techrank/Views/utils/constrains.dart';
import 'package:techrank/Views/utils/search.dart';

class MyAppBar extends StatelessWidget implements PreferredSize {
  var check = false;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size(8.h, 10.h),
      child: AppBar(
        //Search wala kaam//

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
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(8.h);
}

class MyBar extends StatelessWidget implements PreferredSize {
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
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(8.h);
}
