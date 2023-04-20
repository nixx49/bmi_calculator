import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_code.dart';
import 'package:bmi_calculator/IconInfo.dart';
import 'constant.dart';


enum Gender {
  male,
  female,
  noGender,
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.noGender;

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
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconInfo(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: (){
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconInfo(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: ReusableCard(
              onPress: (){},
              colour: kActiveCardColor,
              cardChild: IconInfo(
                icon: FontAwesomeIcons.venus,
                label: 'Female',
              ),
            ),
          ),

          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: (){},
                    colour: kActiveCardColor,
                    cardChild: IconInfo(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: (){},
                    colour: kActiveCardColor,
                    cardChild: IconInfo(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                print(' nav bar pressed');
              });
            },
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomContainerHeight,
              color: kBottomContainerColor,
            ),
          ),
        ],
      ),
    );
  }
}
