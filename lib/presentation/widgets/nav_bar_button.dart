import 'package:flutter/material.dart';

class NavBarButton extends StatelessWidget {
  final Function onPressed;
  final IconData iconData;
  final Color color;
  const NavBarButton({
    Key? key,
    required this.onPressed,
    required this.iconData,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        onPressed();
      },
      child: Column(
        children: [
          Icon(
            iconData,
            color: color,
            size: 30,
          ),
        ],
      ),
    );
  }
}
