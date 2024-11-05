import 'package:flutter/material.dart';
class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: Column(
        children: [
          Text("Posicionamiento vertical", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Text("Elemento1"),
          Text("Elemento2"),
          Text("Elemento3"),
          SizedBox(height: 30,),
          Text("Posicionamiento horizontal" , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1"),
              Text("1"),
              Text("1"),
              Text("1"),
              Text("1"),
            ],
          ),
          SizedBox(height: 30,),
          Text("Posicionamiento Superpuesto", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Stack(
            children: [
              Text("Hola"),
              Text("Elemento2")
            ],
          )
        ],
      )),
    );
  }
}