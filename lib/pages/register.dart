import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                    padding: const EdgeInsets.only(top: 200),
                    child: Column(
                      children: [
                        const Padding(
                            padding: EdgeInsets.only(bottom: 20),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 35.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: ('First name'),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: ('Last name'),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: ('Email'),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: ('Password'),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: ('Confirm Password'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SizedBox(
                                width: 150.0,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: ('Year'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 150.0,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: ('Gender'),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () {
                            debugPrint('Moviendose a login');
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
