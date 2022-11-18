import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:techrank/Views/utils/cards.dart';
import 'package:techrank/Views/utils/head.dart';

class BlueAppdev extends StatelessWidget {
  const BlueAppdev({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyBar(),
      body: Container(
        padding: EdgeInsets.fromLTRB(2.w, 5.h, 2.w, 0),
        child: Column(
          children: [
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(5.w, 2.h, 0, 0),
                      child: Container(
                        width: 20.h,
                        child: const Modulecard(
                          Cardimage: AssetImage('assets/java.png'),
                          Textinfo: 'Java',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(4.w, 2.h, 0, 0),
                      child: Container(
                        width: 20.h,
                        child: const Modulecard(
                          Cardimage: AssetImage('assets/swift.png'),
                          Textinfo: 'Swift',
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
