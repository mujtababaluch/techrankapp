import 'package:flutter/material.dart';
import 'package:techrank/Views/utils/bronzebadge.dart';
import 'package:techrank/Views/utils/head.dart';

class RedWebdev extends StatelessWidget {
  const RedWebdev({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return const BronzeWebdev();
              },
            ),
          ),
        ],
      ),
    );
  }
}
