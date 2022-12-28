import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp()); }
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
    Widget build(BuildContext context) {
      return MaterialApp(
      home: Scaffold(
        body:  Container(
          height: double.infinity,
          width: double.infinity,
    child: FittedBox(
    fit: BoxFit.cover,
   child: Image.network('https://cdn.britannica.com/46/198846-050-82EE84FC/Lady-Ermine-oil-panel-Leonardo-da-Vinci.jpg'),


      )

    )

        ),
      );




  }
}