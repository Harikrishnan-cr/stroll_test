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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomNavController()),
        ChangeNotifierProvider(create: (context) => HomeController()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.

          useMaterial3: true,
        ),
        home: NavBarScreen(),
      ),
    );
  }
}
