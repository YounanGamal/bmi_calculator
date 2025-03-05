import 'package:bmi_calculator/core/route/page_route_name.dart';
import 'package:bmi_calculator/feature/calculator/presentation/view/calculator_view.dart';
import 'package:bmi_calculator/feature/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';

class GenerateRoutes {
  static Route<dynamic> onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case PageRouteName.home:
        return MaterialPageRoute(
          builder: (context) => HomeView(),
          settings: settings,
        );
      case PageRouteName.calculator:
        return MaterialPageRoute(
          builder: (context) => CalculatorView(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(),
          settings: settings,
        );
    }
  }
}
