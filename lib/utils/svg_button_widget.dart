import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class CustomSvgbutton extends StatelessWidget {
  final String imgPath;
  final double? size;
  final Color? color;
  final void Function()? onPressed;

   const CustomSvgbutton({super.key, required this.imgPath, this.size, this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 0,
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: SvgPicture.asset(
        imgPath,
        width: size,
        height: size,
        colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
        
      ),
    );
  }
}