import 'package:flutter/material.dart';

class View01 extends StatelessWidget {
  const View01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            Text('Gabriel',
            style: TextStyle(fontSize: 30.5, color: Colors.deepPurple)
            ),
            Text('Ramon',
            style: TextStyle(fontSize: 30.5, color: Colors.deepPurple)
            ),
            Text('Cupil',
            style: TextStyle(fontSize: 30.5, color: Colors.deepPurple)),
          ],
        ),
      ),
    );
  }
}


