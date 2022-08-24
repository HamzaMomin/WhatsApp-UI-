// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hamza_calculator_1/home_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'flutter app',
      theme: ThemeData(

          primarySwatch: Colors.teal        
      ),

      home: HomeScreen()
        );
        
 }
}
