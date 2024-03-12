import 'package:flutter/cupertino.dart';

import 'package:stroll_test_first/core/color_const.dart';


 TextStyle get fontStyle =>const TextStyle(fontFamily: 'proximanova');
 TextStyle get italicFontStyle => const TextStyle(fontFamily: 'proximanova',fontStyle: FontStyle.italic);

extension StrollTextStyl on TextStyle {

 

  ///---------Get colors -- start -----------------------------------------------------------------

  TextStyle get primaryColor => copyWith(
        color: StrollColors.primaryColor,
      );

  TextStyle get secondaryColor => copyWith(
        color: StrollColors.secondaryColor,
      );

  TextStyle get lightWhite => copyWith(
        color: StrollColors.lightWhite,
      );

  TextStyle get blackColor => copyWith(
        color: StrollColors.blackColor,
      );

  TextStyle get whiteColor => copyWith(
        color: StrollColors.whiteColor,
      );

  TextStyle get secondaryWhiteColor => copyWith(
        color: StrollColors.secondaryWhiteColor,
      );

  TextStyle get bsIconColor => copyWith(
        color: StrollColors.bsIconColor,
      );

       TextStyle get quteTextColor => copyWith(
        color: StrollColors.quteTextColor,
      );


  TextStyle get selectedColor => copyWith(
        color: const Color.fromRGBO(139, 136, 239, 1),  
      );
  ///---------Get colors -- End -----------------------------------------------------------------
  


  ///---------Get Font Size -- start -----------------------------------------------------------------
  
TextStyle get s14 => copyWith(fontSize: 14);
TextStyle get s12 => copyWith(fontSize: 12);
TextStyle get s20 => copyWith(fontSize: 20);
TextStyle get s11 => copyWith(fontSize: 11);
TextStyle get s40 => copyWith(fontSize: 40);
TextStyle get s34 => copyWith(fontSize: 34);
TextStyle get s7 => copyWith(fontSize: 7);

  ///---------Get Font Size -- End -----------------------------------------------------------------
 

 
  ///---------Get Font weight -- start -----------------------------------------------------------------
  
   TextStyle get w400 => copyWith(fontWeight: FontWeight.w400);

  TextStyle get w500 => copyWith(fontWeight: FontWeight.w500);

  TextStyle get w600 => copyWith(fontWeight: FontWeight.w600);

  TextStyle get w700 => copyWith(fontWeight: FontWeight.w700);

  TextStyle get w800 => copyWith(fontWeight: FontWeight.w800);

  ///---------Get Font weight -- End -----------------------------------------------------------------
  
}
