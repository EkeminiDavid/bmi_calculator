import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});
  int? weight;
  int? height;
  double? _bmi;

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25.0) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'Your body weight is higher than normal body weight, you should exercise more';
    } else if (_bmi! > 18.5) {
      return 'Good job! You have a normal body weight';
    } else {
      return 'Your body weight is lower than normal body weight, you should eat more';
    }
  }

  @override
  String toString() {
    return '${getResult()} , ${getInterpretation()}, ${calculateBMI()}';
  }
}
