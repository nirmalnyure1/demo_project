import 'package:demo_project/core/constants/colors.dart';
import 'package:flutter/material.dart';

class AuthBottomContent extends StatelessWidget {
  final String text;
  final String submitTypeText;
  final Function onPressed;
  const AuthBottomContent(
      {Key? key,
      required this.text,
      required this.submitTypeText,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        TextButton(
            onPressed: () {
              onPressed();
            },
            child: Text(
              submitTypeText,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: buttonColor,
              ),
            ))
      ],
    );
  }
}
