import 'package:flutter/material.dart';

class View02 extends StatelessWidget {
  const View02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text(
              "Territorio UP", 
              style: TextStyle(fontSize: 60.0,)
              ,),
            Image.asset("assets/images/logo.jpg", scale: 16,),
          ],
        ),
        backgroundColor: Colors.deepPurpleAccent,
        ),
      body: Center(
        child: Column(
        children: const [TitleSection(),ColumnSection()],
    ),
      )
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 40, 
        bottom: 40,
      ),
      child: Text('Texto', style: TextStyle(fontSize: 60,),),);
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
        Text('4. ---------', style: TextStyle(fontSize: 20,),),
      ],
    );
  }
}