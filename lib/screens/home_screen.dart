import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba/services/firebase_auth_methods.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.read<FirebaseAuthMethods>().user;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Logged in!"),
            Text(user.email!),
            Text(user.displayName!),
            Text(user.providerData[0].providerId),
            Text(user.uid),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 10.0),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 40.0,
                color: const Color(0xFFfc145f),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                onPressed: () {
                  context.read<FirebaseAuthMethods>().signOut(context);
                },
                child: const Text(
                  "Salir",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
