import 'package:flutter/material.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({super.key, this.title, this.image, this.description});
  final String? title, image, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:150.0, right: 60.0, left:60.0, bottom: 20.0),
          child: SizedBox(
            height: 300.0,
            child: Image.asset(image!)),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Text(
            title!,
            style: const TextStyle(
              fontFamily: 'ITCAvantGardeStd',
              // fontWeight: FontWeight.bold,
              fontSize: 32.0,
              color: Color(0xFF4f1581)
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60.0, right: 60.0),
          child: Text(description!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Century',
              fontSize: 20.0,
              color: Color(0xFF808080)
            )
          ),
        )
      ],
    );
  }
}