import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stroll_test_first/controller/bottom_nav_controller.dart';
import 'package:stroll_test_first/controller/home_controller.dart';
import 'package:stroll_test_first/core/font_style.dart';
import 'package:stroll_test_first/view/Home/home_screen.dart';
import 'package:stroll_test_first/view/nav_bar/nav_bar_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomNavController()),
        ChangeNotifierProvider(create: (context) => HomeController()),
      ],
      child: MaterialApp(
        title: 'Stroll',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        

          useMaterial3: true,
        ),
        home: const NavBarScreen(),
      ),
    );
  }
}
