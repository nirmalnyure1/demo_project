import 'package:demo_project/core/constants/colors.dart';
import 'package:demo_project/core/widgets/custom_button1.dart';
import 'package:flutter/material.dart';

import '../../core/constants/list.dart';
import '../../core/widgets/custom_icon_button.dart';
import '../widgets/image_bottom_content.dart';
import '../widgets/item_bottom_content.dart';
import '../widgets/item_description.dart';

class ItemPage extends StatelessWidget {
  final int index;
  const ItemPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      items[index]["imageUrl"]!,
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    left: 0,
                    bottom: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          // color: Colors.black12,
                          gradient: const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black54,
                            ],
                          )),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    left: 20,
                    bottom: 20,
                    child: ImageBottomContent(
                      itemName: items[index]["itemName"]!,
                      price: items[index]["price"]!,
                      location: items[index]["location"]!,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const ItemDescription(),
              const SizedBox(height: 20),
              const ItemBottomContent(),
            ],
          ),
        )),
      ),
    );
  }
}
