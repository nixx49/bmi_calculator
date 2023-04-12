import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_code.dart';
import 'package:bmi_calculator/IconInfo.dart';

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
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: IconInfo(icon: FontAwesomeIcons.mars,label: 'MALE',),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,
                    cardChild: IconInfo(icon: FontAwesomeIcons.venus,label: 'Female',),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: ReusableCard(colour: activeCardColor,cardChild: IconInfo(icon: FontAwesomeIcons.venus,label: 'Female',),),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: activeCardColor,cardChild: IconInfo(icon: FontAwesomeIcons.venus,label: 'Female',),),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColor,cardChild: IconInfo(icon: FontAwesomeIcons.venus,label: 'Female',),
                  ),
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



