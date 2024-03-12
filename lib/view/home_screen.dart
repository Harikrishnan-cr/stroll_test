


import 'package:flutter/material.dart';
import 'package:stroll_test_first/core/font_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Text('ss',style: fontStyle.blackColor.s40.w800)
        ],
      ),
    );
  }
}