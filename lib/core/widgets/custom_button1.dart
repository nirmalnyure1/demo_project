import 'package:demo_project/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomButtion1 extends StatelessWidget {
  final Function onPressed;
  final String name;
  final IconData? prefixIcon;
  final bool hasIcon;
  final double hPadding;

  const CustomButtion1({
    Key? key,
    required this.onPressed,
    required this.name,
    this.prefixIcon,
    this.hasIcon = false,
    this.hPadding=0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 2,
        primary: buttonColor,
        padding:  EdgeInsets.symmetric(vertical: 20, horizontal: hPadding),
      ),
      onPressed: () {
        onPressed();
      },
      child: hasIcon
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  prefixIcon,
                  size: 25,
                  color: Colors.white,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          : Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: Colors.white,
              ),
            ),
    );
  }
}
