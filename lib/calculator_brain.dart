import 'dart:math';

class CalculatorBrain{

  CalculatorBrain({required this.height,required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI(){
    _bmi = weight/ pow(height, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'OverWeight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'UnderWeight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'You have higher than normal body weight. plz do exercise';
    }else if(_bmi > 18.5){
      return 'your BMI is normal. good job!';
    }else{
      return 'your BMI is quite low. please eat more and do exercise daily!';
    }

  }

}