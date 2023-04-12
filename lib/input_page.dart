import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

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
              children:[
                Expanded(
                  child: ReusableCard(colour:activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour:activeCardColor),
                ),
              ],
            ),
          ),

           Expanded(
            child: ReusableCard(colour:activeCardColor),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour:activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(colour:activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
            color: bottomContainerColor,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {

 ReusableCard({super.key, required this.colour});

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
