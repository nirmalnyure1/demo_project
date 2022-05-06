import 'package:flutter/material.dart';

class AuthPageTitleDesign extends StatelessWidget {
  final String title;
  final String subTitle;
  const AuthPageTitleDesign(
      {Key? key, required this.title, required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: Colors.black,
          ),
        ),
       const  SizedBox(
          height: 10,
        ),
        Text(
          subTitle,
          style:const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14  ,
              color: Colors.black,
          ),
        )
      ],
    );
  }
}
