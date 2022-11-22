import 'package:flutter/material.dart';
import 'package:techrank/Views/utils/head.dart';
import 'package:techrank/Views/utils/silverbadge.dart';

class YellowAppdev extends StatelessWidget {
  const YellowAppdev({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return const SilverAppdev();
              },
            ),
          ),
        ],
      ),
    );
  }
}
