import 'dart:ui';

import 'package:flutter/material.dart';

class View03 extends StatelessWidget {
  const View03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Territorio UP", 
              style: TextStyle(fontSize: 50.0,)
              ,),
            Image.asset("assets/images/logo.png", scale: 16,),
          ],
        ),
        backgroundColor: Colors.deepPurpleAccent,
        ),
      body: Center(
        child: Column(
        children: const [TextSection(),ColumnSection()],
    ),
      )
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    Key? key,
  }) : super(key: key);
  
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
              top: 20.0, 
              bottom: 40.0,
            ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Texto Izquierda',
                  style: 
                    TextStyle(fontSize: 20,),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Text(
                  'Texto Derecha',
                  style: 
                    TextStyle(fontSize: 20,),
                ),
              ),
            ],
          ),
          const ImageSection(),
        ],
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Image.asset("assets/images/logo.png", width: 200.0,),
    );
  }
}

class ColumnSection extends StatelessWidget {
  const ColumnSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const[
        Text('1. ---------', style: TextStyle(fontSize: 20,),),
        Text('2. ---------', style: TextStyle(fontSize: 20,),),
        Text('3. ---------', style: TextStyle(fontSize: 20,),),
      ],
    );
  }
}