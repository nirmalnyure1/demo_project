import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';
import '../../core/widgets/custom_button1.dart';
import '../../core/widgets/custom_icon_button.dart';

class ItemBottomContent extends StatelessWidget {
  const ItemBottomContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomIconButton(
                onPressed: () {},
                icon: Icons.add,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "1",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                width: 10,
              ),
              CustomIconButton(
                onPressed: () {},
                icon: Icons.remove,
              ),
            ],
          ),
        ),
        CustomButtion1(
          hasIcon: true,
          hPadding: 30,
          prefixIcon: Icons.shopping_cart,
          onPressed: () {},
          name: "Add to Cart",
        ),
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: Icon(
            Icons.favorite,
            color: buttonColor,
            size: 20,
          ),
        )
      ],
    );
  }
}
