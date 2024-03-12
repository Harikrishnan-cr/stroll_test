


import 'package:flutter/material.dart';
import 'package:stroll_test_first/core/font_style.dart';
import 'package:stroll_test_first/core/svg_file.dart';
import 'package:stroll_test_first/utils/svg_viever.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.red,
      body: Column(
        children: [

          const CustomSvgIcon(imgPath: StrolSvg.cardsIcon),
          Text('ss',style: fontStyle.blackColor.s40.w800)
        ],
      ),
    );
  }
}