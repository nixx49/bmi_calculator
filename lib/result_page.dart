import 'package:bmi_calculator/reusable_code.dart';
import 'package:flutter/material.dart';
import 'constant.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        centerTitle: true,
        title: const Text('BML CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(
            child: const Text('Your Result',
              style: kTitleTextStyle,
            ),
          ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
               cardChild: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: const <Widget>[
                   Text('Normal',
                   style: kResultTextStyle,),
                   Text('18.3',style: kBMITextStyle,
                    ),
                   Text('your BMI is quite low. please eat more and do exersice daily!', textAlign: TextAlign.center,style: kBodyTextStyle,)
                 ],
               ),
              onPress: (){},
            ),
          )
        ],
      ),
    );
  }
}
