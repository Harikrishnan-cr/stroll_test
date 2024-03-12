



import 'package:flutter/material.dart';
import 'package:stroll_test_first/utils/svg_viever.dart';
import 'package:stroll_test_first/view/Home/home_screen.dart';

class NavBarScreen extends StatelessWidget {
   NavBarScreen({super.key});



  final List<Widget> _children =  [
   HomeScreen(),
    Center(child: Text('Profile')),
    Center(child: Text('Messages')),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: _children[0],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        onTap: (value) {
          
        },
        backgroundColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: CustomSvgIcon(imgPath: 'assets/images/home.svg'),
          ),
          BottomNavigationBarItem(
            icon: CustomSvgIcon(imgPath: 'assets/images/profile.svg'),
          ),
          BottomNavigationBarItem(
            icon: CustomSvgIcon(imgPath: 'assets/images/messages.svg'),
          ),
        ],
      ),


    );
  }
}