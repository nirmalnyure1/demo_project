import 'package:demo_project/core/constants/colors.dart';
import 'package:demo_project/presentation/pages/cart.dart';
import 'package:demo_project/presentation/pages/upload.dart';
import 'package:flutter/material.dart';

import '../widgets/nav_bar_button.dart';
import 'home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  PageController pageController = PageController();
  final pages = [
    const Home(),
    const Upload(),
    const Cart(),
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  changePage() {
    pageController.animateToPage(pageIndex,
        duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: pages,
            controller: pageController,
            onPageChanged: (int value) {
              setState(() {
                pageIndex = value;
              });
            },
          ),
          Positioned(
            left: 10,
            right: 10,
            bottom: 10,
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0.0, 2.0),
                      blurRadius: 4,
                      spreadRadius: 1,
                      color: Colors.grey.shade300),
                ],
              ),
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      NavBarButton(
                        iconData:
                            pageIndex == 0 ? Icons.home : Icons.home_outlined,
                        onPressed: () {
                          setState(() {
                            pageIndex = 0;
                            changePage();
                          });
                        },
                        color: pageIndex == 0 ? buttonColor : Colors.grey,
                      ),
                      NavBarButton(
                        iconData: pageIndex == 1
                            ? Icons.camera_alt
                            : Icons.camera_alt_outlined,
                        onPressed: () {
                          setState(() {
                            pageIndex = 1;
                            changePage();
                          });
                        },
                        color: pageIndex == 1 ? buttonColor : Colors.grey,
                      ),
                      NavBarButton(
                        iconData: pageIndex == 2
                            ? Icons.shopping_cart
                            : Icons.shopping_cart_outlined,
                        onPressed: () {
                          setState(() {
                            pageIndex = 2;
                            changePage();
                          });
                        },
                        color: pageIndex == 2 ? buttonColor : Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
