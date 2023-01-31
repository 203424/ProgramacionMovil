import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 400),
                    child: Column(
                      children: [
                        const Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: ('email'),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: ('email'),
                            ),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            debugPrint('Accediendo');
                          },
                          child: const Text('Login'),
                        )
                      ],
                    ),
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
