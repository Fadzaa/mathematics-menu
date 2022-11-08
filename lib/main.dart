import 'package:flutter/material.dart';
import 'package:kalkulator/kalkulator.dart';
import 'package:kalkulator/loginMenu.dart';
import 'package:kalkulator/bangunDatar.dart';
import 'package:kalkulator/menuMatematika.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: loginMenu()
    );

  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return loginMenu();
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return menuMatematika();
  }
}

class calculator extends StatefulWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  @override
  Widget build(BuildContext context) {
    return kalkulator();
  }
}


class bangun_datar extends StatefulWidget {
  const bangun_datar({Key? key}) : super(key: key);

  @override
  State<bangun_datar> createState() => _bangun_datarState();
}

class _bangun_datarState extends State<bangun_datar> {
  @override
  Widget build(BuildContext context) {
    return bangunDatar();
  }
}








