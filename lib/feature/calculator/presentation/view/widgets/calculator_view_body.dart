import 'package:bmi_calculator/core/theme/app_colors.dart';
import 'package:bmi_calculator/core/theme/text_styles.dart';
import 'package:bmi_calculator/feature/calculator/presentation/view/widgets/custom_dialog.dart';
import 'package:bmi_calculator/feature/calculator/presentation/view/widgets/custom_widget.dart';
import 'package:bmi_calculator/feature/calculator/presentation/view/widgets/height_card.dart';
import 'package:bmi_calculator/feature/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/feature/home/presentation/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CalculatorViewBody extends StatefulWidget {
  const CalculatorViewBody({super.key});

  @override
  State<CalculatorViewBody> createState() => _CalculatorViewBodyState();
}

class _CalculatorViewBodyState extends State<CalculatorViewBody> {
  int selectedValue = 100;
  int numberWeight = 20;
  int numberAge = 10;

  @override
  Widget build(BuildContext context) {
    var isMale = ModalRoute.of(context)?.settings.arguments as bool;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios, color: AppColors.primaryColor),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [CustomAppBar()],
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Text(
            'Please Modify the values',
            textAlign: TextAlign.center,
            style: TextStyles.medium24,
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              CustomWidget(
                text: 'Weight (kg)',
                number: numberWeight,
                onTapMinus: () {
                  setState(() {
                    numberWeight--;
                  });
                },
                onTapPlus: () {
                  setState(() {
                    numberWeight++;
                  });
                },
              ),
              SizedBox(width: 30),
              CustomWidget(
                text: 'Age',
                number: numberAge,
                onTapMinus: () {
                  setState(() {
                    numberAge--;
                  });
                },
                onTapPlus: () {
                  setState(() {
                    numberAge++;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 30),
          HeightCard(
            selectedValue: selectedValue,
            onValueChanged: (p0) {
              setState(() {
                selectedValue = p0;
              });
            },
          ),
          SizedBox(height: 50),
          CustomButton(
            text: 'Calculator',
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CustomDialog(
                    height: selectedValue,
                    bmi: double.parse(
                      (numberWeight /
                              (selectedValue / 100 * selectedValue / 100))
                          .toStringAsFixed(1),
                    ),
                    weight: numberWeight,
                    age: numberAge,
                    gender: isMale ? 'male' : 'female',
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
