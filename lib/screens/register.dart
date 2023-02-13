import 'package:flutter/material.dart';
import 'package:prueba/pages/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool agree = false;
  bool _obscureTextPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Regístrate'),
            Image.asset(
              'assets/images/logo_blanco.png',
              scale: 5.5,
            )
          ],
        ),
        backgroundColor: const Color(0xFF49197d),
        iconTheme: const IconThemeData(color: Color(0xFFfc145f)),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            child: Text(
                              'Crea una cuenta para empezar a usar la app',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF767677),
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Text(
                                'Nombre',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  hintText: ('Nombre completo'),
                                ),
                              )),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Text('Correo electrónico',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                hintText: ('Dirección de correo'),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Text('Contraseña',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900)),
                            ),
                          ),
                          TextField(
                            obscureText: _obscureTextPassword,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              hintText: ('Contraseña'),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureTextPassword =
                                        !_obscureTextPassword;
                                  });
                                },
                                child: Icon(_obscureTextPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 8.0),
                            child: Text(
                              'La contraseña debe contener caracteres, números y símbolos con un mínimo de 6 caracteres.',
                              style: TextStyle(
                                  color: Color(0xFF767677), fontSize: 13),
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                  value: agree,
                                  shape: const CircleBorder(),
                                  onChanged: (value) {
                                    setState(() {
                                      agree = value ?? false;
                                    });
                                  }),
                              SizedBox(
                                width: 310.0,
                                child: RichText(
                                  text: TextSpan(
                                    text: 'Al registrarme, acepto los',
                                    style: DefaultTextStyle.of(context).style,
                                    children: const [
                                      TextSpan(
                                          text: ' términos y condiciones',
                                          style: TextStyle(
                                              color: Color(0xFFfc145f))),
                                      TextSpan(text: ' y la '),
                                      TextSpan(
                                          text: 'política de privacidad',
                                          style: TextStyle(
                                              color: Color(0xFFfc145f))),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: SizedBox(
                              width: double.infinity,
                              height: 55.0,
                              child: MaterialButton(
                                color: const Color(0xFF75a757),
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: const Text(
                                  'Crear Cuenta',
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "¿Ya tienes una cuenta?",
                                style: TextStyle(fontSize: 16.0),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Login()),
                                    );
                                  },
                                  child: const Text(
                                    "Iniciar sesión",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0xFFfc145f)),
                                  ))
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
