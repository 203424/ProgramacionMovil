import 'package:flutter/material.dart';
//import 'package:prueba/pages/login.dart';
// import 'package:prueba/pages/register.dart';
import 'package:prueba/screens/body_boarding.dart';
// import 'package:prueba/pages/view01.dart';
// import 'package:prueba/pages/view02.dart';
// import 'package:prueba/pages/view03.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Practica2",
      home: BodyBoarding()
    );
  }
}

