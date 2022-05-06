import 'package:demo_project/core/constants/colors.dart';
import 'package:demo_project/presentation/pages/home_page.dart';
import 'package:demo_project/presentation/pages/landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.grey),
        //  home: LandingPage(),
        home: const LandingPage());
  }
}
