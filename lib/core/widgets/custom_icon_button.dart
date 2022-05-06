import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Icon(
            icon,
            size: 18,
            color: buttonColor,
          ),
        ),
      ),
    );
  }
}
