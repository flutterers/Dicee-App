import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dicee App',
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Center(child: const Text("Dicee")),
            backgroundColor: Colors.red,
          ),
          body: DicePage(),
        ));
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  late int leftDiceNo = 1;
  late int rightDiceNo = 1;

  void randomize() {
    setState(() {
      leftDiceNo = Random().nextInt(6) + 1;
      rightDiceNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                  overlayColor:
                      MaterialStateColor.resolveWith((states) => Colors.red)),
              onPressed: () {
                randomize();
                print("Left Button is Pressed");
              },
              child: Image.asset("images/dice$leftDiceNo.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              style: ButtonStyle(
                  overlayColor:
                      MaterialStateColor.resolveWith((states) => Colors.red)),
              onPressed: () {
                randomize();
                print("Right Button is Pressed");
              },
              child: Image.asset("images/dice$rightDiceNo.png"),
            ),
          ),
        ],
      ),
    );
  }
}
