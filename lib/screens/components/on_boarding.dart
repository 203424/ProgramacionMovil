import 'package:flutter/material.dart';
import 'package:prueba/screens/components/content_boarding.dart';
import 'package:prueba/screens/splash_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  _storeOnBoardInfo() async {
    int isViewed = 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('isViewed', isViewed);
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
                    onPressed: () async {
                      if (currentPage == listBoarding.length - 1) {
                        _storeOnBoardInfo();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const SplashView()),
                        );
                      }
                      pagesController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.linear);
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