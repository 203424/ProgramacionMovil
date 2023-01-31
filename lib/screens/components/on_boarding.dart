import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentPage = 0;
  List<Map<String, String>> listBoarding = [
    {
      'titulo': 'Cualquier Dato 0',
      'imagen': '',
      'descripcion': '',
    },
    {
      'titulo': 'Cualquier Dato 1',
      'imagen': '',
      'descripcion': '',
    },
    {
      'titulo': 'Cualquier Dato 2',
      'imagen': '',
      'descripcion': '',
    },
    {
      'titulo': 'Cualquier Dato 3',
      'imagen': '',
      'descripcion': '',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: const [
        Expanded(
          flex: 2,
          child: Text(
            "Flex 2",
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            "Flex 2",
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Center(
            child: OutlinedButton(
              onPressed: null,
              child: Text('Button'),
            ),
          ),
        ),
      ]),
    );
  }
}
