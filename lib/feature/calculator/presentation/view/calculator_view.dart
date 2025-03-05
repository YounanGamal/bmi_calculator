import 'package:bmi_calculator/feature/calculator/presentation/view/widgets/calculator_view_body.dart';
import 'package:flutter/material.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CalculatorViewBody()),
    );
  }
}
