


import 'package:flutter/cupertino.dart';

class CustomPngIcon extends StatelessWidget {
  final String imgPath;
  final double? size;
  final Color? color;

  const CustomPngIcon({super.key, required this.imgPath, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imgPath,
      width: size,
      height: size,
      color: color,
    
    );
  }
}