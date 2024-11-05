import 'package:flutter/material.dart';
import 'package:widget_app/config/router.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: ThemeData(
        colorSchemeSeed: Colors.blueGrey
      ),
    );
  }
}