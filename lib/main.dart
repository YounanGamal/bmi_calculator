import 'package:bmi_calculator/core/route/generate_routes.dart';
import 'package:bmi_calculator/core/route/page_route_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: GenerateRoutes.onGenerate,
      initialRoute: PageRouteName.home,
    );
  }
}

