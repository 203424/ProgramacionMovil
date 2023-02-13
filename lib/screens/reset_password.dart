import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Recuperar contraseña'),
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
                              'Ingresa tu email para restablecer tu contraseña',
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
                              child: Text('Correo electrónico',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0),
                            child: Text(
                              'Ingrese su correo electrónico registrado y le enivaremos un correo electrónico que contiene un enlace para restablecer su contraseña.',
                              style: TextStyle(
                                  color: Color(0xFF767677), fontSize: 13),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                            padding: const EdgeInsets.only(bottom: 40.0),
                            child: SizedBox(
                              width: double.infinity,
                              height: 55.0,
                              child: MaterialButton(
                                color: const Color(0xFF75a757),
                                onPressed: () {
                                  Navigator.push(context,
                                    MaterialPageRoute(
                                          builder: (context) => const NewPassword()),
                                    );
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: const Text(
                                  'Enviar Solicitud',
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
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

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool _obscureTextPassword = true;
  bool _obscureTextConfirmPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Recuperar contraseña'),
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
                      Column(children: [
                        const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            child: Text(
                              'Por seguridad, tu contraseña debe tener una longitud de entre 8 y 15 caracteres, usar mayúsculas, minúsculas, contener por lo menos un número y un caracter especial.',
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
                              child: Text('Nueva contraseña',
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
                              hintText: ('Nueva contraseña'),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureTextPassword =! _obscureTextPassword;
                                  });
                                },
                                child: Icon(
                                  _obscureTextPassword ? Icons.visibility_off : Icons.visibility
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Text('Confirmar nueva contraseña',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900)),
                            ),
                          ),
                          TextField(
                            obscureText: _obscureTextConfirmPassword,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              hintText: ('Confirma tu nueva contraseña'),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureTextConfirmPassword =! _obscureTextConfirmPassword;
                                  });
                                },
                                child: Icon(
                                  _obscureTextConfirmPassword ? Icons.visibility_off : Icons.visibility
                                ),
                              ),
                            ),
                          ),
                      ],),
                      Padding(
                            padding: const EdgeInsets.only(bottom: 40.0),
                            child: SizedBox(
                              width: double.infinity,
                              height: 55.0,
                              child: MaterialButton(
                                color: const Color(0xFF75a757),
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: const Text(
                                  'Actualizar contraseña',
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
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
