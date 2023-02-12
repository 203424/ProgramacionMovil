import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prueba/screens/body_boarding.dart';
import 'package:prueba/screens/splash_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isViewed;
void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  isViewed = prefs.getInt('isViewed');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "All For My Pet",
      home: isViewed != 0 ? const BodyBoarding() : const SplashView(),
    );
  }
}
