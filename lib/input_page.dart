import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        centerTitle: true,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: const Color(0xFF1D1E33),
            borderRadius: BorderRadius.circular(10.0)),
      )
    );
  }
}