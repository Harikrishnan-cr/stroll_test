



import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:stroll_test_first/controller/bottom_nav_controller.dart';
import 'package:stroll_test_first/core/color_const.dart';
import 'package:stroll_test_first/core/font_style.dart';
import 'package:stroll_test_first/core/svg_file.dart';
import 'package:stroll_test_first/utils/svg_viever.dart';
import 'package:stroll_test_first/view/Home/home_screen.dart';

class NavBarScreen extends StatelessWidget {
   const NavBarScreen({super.key});



  final List<Widget> _children =  const [
   HomeScreen(),
    Center(child: Text('Profile')),
    Center(child: Text('Messages')),
    Center(child: Text('Messages')),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: _children[Provider.of<BottomNavController>(context).getCurrentIndex],

      bottomNavigationBar: Consumer<BottomNavController>(
        builder: (context,controller,_) {
          return BottomNavigationBar(
            currentIndex: controller.getCurrentIndex,
            onTap: (value) {
            
              controller.onCurruntIndexUpdate(currentIndex: value);
            },
            backgroundColor: StrollColors.primaryColor,
            unselectedItemColor: Colors.grey,
            type: BottomNavigationBarType.fixed,
            items:  [
             const  BottomNavigationBarItem(
                label: '',
                icon: CustomSvgIcon(imgPath: StrolSvg.cardsIcon),
                activeIcon: CustomSvgIcon(imgPath: StrolSvg.cardsIcon,color: StrollColors.whiteColor),
              ),
              const BottomNavigationBarItem(
                 label: '',
                icon: CustomSvgIcon(imgPath: StrolSvg.flamesSvg),
                activeIcon: CustomSvgIcon(imgPath: StrolSvg.flamesSvg,color: StrollColors.whiteColor),
                
              ),
              BottomNavigationBarItem(
                  label: '',
                  activeIcon: SizedBox(
                  width: 35,
                  child: Stack(
                    children: [
                       const CustomSvgIcon(imgPath: StrolSvg.chatSvg,color: StrollColors.whiteColor,),
                      Positioned(
                        right: 0,
                        child: Container(
                          width: 16,
                          height: 13,
                          decoration: BoxDecoration(
                            color: StrollColors.bsIconColor,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: StrollColors.blackColor,width: 1.5)
                          ),
                          child: Center(child: Text('10',style: fontStyle.blackColor.w700.s7,)),
                        ),
                      ),
                     
                    ],
                  ),
                ),
                icon: SizedBox(
                  width: 35,
                  child: Stack(
                    children: [
                       const CustomSvgIcon(imgPath: StrolSvg.chatSvg),
                      Positioned(
                        right: 0,
                        child: Container(
                          width: 16,
                          height: 13,
                          decoration: BoxDecoration(
                            color: StrollColors.bsIconColor,
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: StrollColors.blackColor,width: 1.5)
                          ),
                          child: Center(child: Text('10',style: fontStyle.blackColor.w700.s7,)),
                        ),
                      ),
                     
                    ],
                  ),
                ),
              ),
          
              const BottomNavigationBarItem(
                  label: '',
                icon: CustomSvgIcon(imgPath: StrolSvg.userSvg),
                activeIcon: CustomSvgIcon(imgPath: StrolSvg.userSvg,color: StrollColors.whiteColor),
              ),
            ],
          );
        }
      ),


    );
  }
}