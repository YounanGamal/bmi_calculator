import 'package:bmi_calculator/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'BMI',
                style: TextStyle(
                  color: Color(0xFFFFB534),
                  fontSize: 32,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  height: 1,
                  shadows: [
                    Shadow(
                      offset: Offset(0, 0),
                      blurRadius: 2,
                      color: Color(0xFF000000).withOpacity(0.25),
                    ),
                  ],
                ),
              ),
              TextSpan(
                text: ' Calculator',
                style: TextStyle(
                  color: Color(0xFF65B741),
                  fontSize: 32,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  height: 1,
                  shadows: [
                    Shadow(
                      offset: Offset(0, 0),
                      blurRadius: 2,
                      color: Color(0xFF000000).withOpacity(0.25),
                    ),
                  ],
                ),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
