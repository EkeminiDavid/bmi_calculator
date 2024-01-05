import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class CalculationButton extends StatelessWidget {
  const CalculationButton(
      {super.key, required this.buttonId, required this.onTap});

  final String buttonId;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: const EdgeInsets.only(top: 10),
        child: Center(
          child: Text(
            buttonId,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
