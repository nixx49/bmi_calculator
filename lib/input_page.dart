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
      body: Column(
        children: [
          //const SizedBox(height: 10,),
          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(colour: Color(0xFF1D1E33),),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(0xFF1D1E33),),
                ),
              ],
            ),
          ),

          const Expanded(
            child: ReusableCard(colour: Color(0xFF1D1E33),),
          ),

          Expanded(
            child: Row(
              children: const [
                Expanded(
                  child: ReusableCard(colour: Color(0xFF1D1E33),),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(0xFF1D1E33),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {

  const ReusableCard({super.key, required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 190,
      // width: 185,
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
