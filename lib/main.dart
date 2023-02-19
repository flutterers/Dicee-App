import 'package:flutter/material.dart';

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
            title: const Text("Dicee"),
            backgroundColor: Colors.red,
          ),
          body: DicePage(),
        ));
  }
}

class DicePage extends StatelessWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("images/dice1.png"),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("images/dice1.png"),
            ),
          ),
        ],
      ),
    );
  }
}