import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  final String imageUrl;
  final String itemName;
  final String location;
  final String price;
  final Function onPressed;
  const CustomItem(
      {Key? key,
      required this.imageUrl,
      required this.itemName,
      required this.location,
      required this.price,
     required this.onPressed })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            onPressed();
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
              width: 160,
              height: 160,
            ),
          ),
        ),
     const   SizedBox(height: 20),
        Text(
          itemName,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          location,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          price,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
