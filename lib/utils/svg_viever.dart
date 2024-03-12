


import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgIcon extends StatelessWidget {
  final String imgPath;
  final double? size;
  final Color? color;

  const CustomSvgIcon({super.key, required this.imgPath, this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imgPath,
      width: size,
      height: size,
      colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
  
    );
  }
}