import 'package:demo_project/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  final Function onPressed;
  final String name;
  const CustomButton2({Key? key, required this.onPressed, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            // elevation: 5,
            primary: buttonColor,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            side: BorderSide(color: buttonColor, width: 2)),
        onPressed: () {
          onPressed();
        },
        child: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: buttonColor,
          ),
        ));
  }
}
