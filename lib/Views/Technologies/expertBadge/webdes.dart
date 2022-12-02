import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:techrank/Views/utils/expertbadge.dart';
import 'package:techrank/Views/utils/head.dart';

class BlueWebdes extends StatelessWidget {
  const BlueWebdes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyBar(),
      body: Container(
        padding: EdgeInsets.fromLTRB(2.w, 5.h, 2.w, 0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return const ExpertWebdes();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
