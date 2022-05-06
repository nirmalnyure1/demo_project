import 'package:flutter/material.dart';

class ItemDescription extends StatelessWidget {
  const ItemDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 10),
        Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
          textAlign: TextAlign.justify,
          style: TextStyle(
            //    decoration: TextDecoration(),
            fontWeight: FontWeight.w300,

            fontSize: 14,
            color: Colors.black,
          ),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            "Read more...",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}