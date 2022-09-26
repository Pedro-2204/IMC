import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(CalcImcApp());
}

class CalcImcApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculadora de IMC",
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }

}