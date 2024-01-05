import 'package:bmi_calculator/calculation_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {super.key, this.resultText, this.bmiResult, this.interpretation});

  final String? resultText, bmiResult, interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Result page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 36),
            child: Center(
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: kActiveCardColor,
                    borderRadius: BorderRadius.circular(12)),
                height: 400,
                padding: EdgeInsetsDirectional.all(20),
                margin: const EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText!,
                      style: TextStyle(fontSize: 30, color: Colors.green),
                    ),
                    Text(
                      bmiResult!,
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      interpretation!,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              CalculationButton(
                buttonId: 'RECALCULATE',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
