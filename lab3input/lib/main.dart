import 'package:flutter/material.dart';
import 'package:lab3input/page/inputhome.dart';
import 'package:lab3input/models/like.dart';
import 'package:lab3input/models/year.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const Inputhomepage(),
    );
  }
}

