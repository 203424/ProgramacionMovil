import 'package:flutter/material.dart';
import 'package:prueba/screens/inicio.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(
        const Duration(milliseconds: 1500),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Inicio()),
            ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 1,
          child: ClipPath(
              clipper: WaveClipperUp(),
              child: Container(
                color: const Color(0xFF75a757),
              )),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(right: 70.0, left: 70.0),
            child:
                SizedBox(child: Image.asset("assets/images/SPLASH_VIEW.png")),
          ),
        ),
        Expanded(
          flex: 1,
          child: ClipPath(
              clipper: WaveClipperDown(),
              child: Container(
                color: const Color(0xFF75a757),
              )),
        )
      ],
    ));
  }
}

class WaveClipperUp extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(size.width * 0.0025100, size.height * 0.0004000);
    path0.lineTo(size.width * 0.9982700, size.height * 0.0029600);
    path0.lineTo(size.width * 1.0008000, size.height * 0.3024200);
    path0.quadraticBezierTo(size.width * 0.9667200, size.height * 0.3936000,
        size.width * 0.8670100, size.height * 0.4040200);
    path0.cubicTo(
        size.width * 0.7461300,
        size.height * 0.3705200,
        size.width * 0.5668100,
        size.height * 0.2132400,
        size.width * 0.4523500,
        size.height * 0.2055800);
    path0.cubicTo(
        size.width * 0.3527600,
        size.height * 0.2012000,
        size.width * 0.2818200,
        size.height * 0.4784200,
        size.width * 0.1592700,
        size.height * 0.4959800);
    path0.quadraticBezierTo(size.width * 0.1098100, size.height * 0.4866600,
        size.width * 0.0016000, size.height * 0.3089600);
    path0.lineTo(size.width * 0.0025100, size.height * 0.0004000);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class WaveClipperDown extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, size.height);
    path0.lineTo(size.width, size.height);
    path0.quadraticBezierTo(size.width, size.height * 0.3455200,
        size.width * 0.7137100, size.height * 0.3300800);
    path0.cubicTo(
        size.width * 0.4417300,
        size.height * 0.3046800,
        size.width * 0.4018200,
        size.height * 0.4546800,
        size.width * 0.2373400,
        size.height * 0.5219000);
    path0.quadraticBezierTo(
        size.width * 0.0864500, size.height * 0.5924800, 0, size.height);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
