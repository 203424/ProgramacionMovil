import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:prueba/pages/login.dart';
import 'package:prueba/screens/register.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 80.0),
            child: SizedBox(child: Image.asset('assets/images/logo.png')),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: SizedBox(
                  height: 55.0,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {},
                    color: const Color(0xFF3e68ec),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFF3e68ec)),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        FaIcon(FontAwesomeIcons.google, color: Colors.white,),
                        Padding(
                          padding: EdgeInsets.only(right : 50.0),
                          child: Text(
                            "Continuar con Google",
                            style: TextStyle(fontSize: 18,color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 20.0),
                child: SizedBox(
                  height: 55.0,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {},
                    color: const Color(0xFF384e9f),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFF384e9f)),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        FaIcon(FontAwesomeIcons.squareFacebook, color: Colors.white,),
                        Padding(
                          padding: EdgeInsets.only(right: 50.0),
                          child: Text(
                            "Continuar con Facebook",
                            style: TextStyle(fontSize: 18,color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 50.0, vertical: 20.0),
                child: SizedBox(
                  height: 55.0,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Register()),
                        );
                    },
                    color: const Color(0xFFfeffff),
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 2, color: Color(0xFF65676f)),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(Icons.email, color: Color(0xFF65676f)),
                        Padding(
                          padding: EdgeInsets.only(right: 50.0),
                          child: Text(
                            "Registrarse con e-mail",
                            style: TextStyle(fontSize: 18,color: Color(0xFF65676f)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                    height: 30.0,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Entrar como invitado",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFFfc145f)),
                        ))),
                SizedBox(
                    height: 30.0,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Entrar como vendedor",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFF75a757)),
                        ))),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "¿Ya tienes una cuenta?",
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Login()),
                        );
                      },
                      child: const Text(
                        "Iniciar sesión",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFFfc145f)),
                      ))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
