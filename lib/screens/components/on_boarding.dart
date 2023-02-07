import 'package:flutter/material.dart';
import 'package:prueba/screens/components/content_boarding.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentPage = 0;
  late PageController pagesController;

  List<Map<String, String>> listBoarding = [
    {
      'titulo': 'ESPARCIMIENTO',
      'imagen': 'assets/images/B1.png',
      'descripcion': 'Brindamos todos los servicios para consentir a tu mascota'
    },
    {
      'titulo': 'ADOPCIÓN',
      'imagen': 'assets/images/B2.png',
      'descripcion':
          'Veniam velit enim officia magna mollit consectetur deserunt.'
    },
    {
      'titulo': 'HOSPITALIDAD',
      'imagen': 'assets/images/B3.png',
      'descripcion':
          'Irure cupidatat enim do aliquip do aliquip ipsum magna velit.'
    },
    {
      'titulo': 'VETERINARIA',
      'imagen': 'assets/images/B4.png',
      'descripcion': 'Voluptate dolor excepteur ipsum ex pariatur.'
    },
    {
      'titulo': 'TIENDA',
      'imagen': 'assets/images/B5.png',
      'descripcion':
          'Compra todas las necesidades de tu mascota sin salir de casa'
    }
  ];

  @override
  void initState() {
    super.initState();
    pagesController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    pagesController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(children: [
        Expanded(
            flex: 2,
            child: PageView.builder(
                itemCount: listBoarding.length,
                controller: pagesController,
                onPageChanged: (int page) {
                  setState(() {
                    currentPage = page;
                  });
                },
                itemBuilder: (context, index) => ContentBoarding(
                      title: listBoarding[index]['titulo'],
                      image: listBoarding[index]['imagen'],
                      description: listBoarding[index]['descripcion'],
                    ))),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    List.generate(listBoarding.length, (index) => pages(index)),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 200.0, right: 30.0, left: 30.0),
                child: SizedBox(
                  height: 60.0,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      if (currentPage == listBoarding.length - 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SplashView()),
                        );
                      }
                      pagesController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeOut);
                    },
                    color: currentPage == listBoarding.length - 1
                        ? const Color(0xFF75a757)
                        : Colors.white,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 1,
                            color: currentPage == listBoarding.length - 1
                                ? const Color(0xFF75a757)
                                : const Color(0xFF808080)),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                        currentPage == listBoarding.length - 1
                            ? 'Continuar'
                            : "Siguiente",
                        style: TextStyle(
                            fontSize: 20,
                            color: currentPage == listBoarding.length - 1
                                ? Colors.white
                                : const Color(0xFF808080))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  AnimatedContainer pages(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 5),
      height: 5,
      width: currentPage == index ? 40 : 20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: currentPage == index
              ? const Color(0xFFfc145f)
              : const Color(0xFFe0e0e0)),
    );
  }
}

class SplashView extends StatelessWidget {
  const SplashView({super.key});

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
