import 'package:bmi_calculator/core/theme/text_styles.dart';
import 'package:bmi_calculator/feature/home/presentation/view/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    required this.bmi,
    required this.weight,
    required this.height,
    required this.gender,
    required this.age,
  });

  final double bmi;
  final int weight;
  final int height;
  final String gender;
  final int age;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return AlertDialog(
      backgroundColor: Color(0xffF0F8EC),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      contentPadding: EdgeInsets.all(20),
      content: Container(
        width: media.width,
        height: media.height * 0.53,
        margin: EdgeInsets.all(5),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Your BMI:', style: TextStyles.medium16),
            SizedBox(height: 10),
            Text(
              bmi.toString(),
              style: TextStyles.bold55.copyWith(color: getBmiColor()),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: BoxDecoration(
                color: getBmiColor(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                getBmiStatus(),
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: List.generate(20, (index) {
                Color color;
                if (index < 6) {
                  color = Colors.blue;
                } else if (index < 12) {
                  color = Colors.green;
                } else if (index < 16) {
                  color = Colors.orange;
                } else {
                  color = Colors.red;
                }
                return Expanded(child: Container(height: 10, color: color));
              }),
            ),
            const SizedBox(height: 10),
            Divider(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '$weight kg',
                      style: TextStyles.semiBold20.copyWith(
                        color: Color(0xFF519234),
                      ),
                    ),
                    Text(
                      'Weight',
                      style: TextStyles.semiBold14.copyWith(
                        color: Color(0xFFABABAB),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '$height cm',
                      style: TextStyles.semiBold20.copyWith(
                        color: Color(0xFF519234),
                      ),
                    ),
                    Text(
                      'Height',
                      style: TextStyles.semiBold14.copyWith(
                        color: Color(0xFFABABAB),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '$age',
                      style: TextStyles.semiBold20.copyWith(
                        color: Color(0xFF519234),
                      ),
                    ),
                    Text(
                      'Age',
                      style: TextStyles.semiBold14.copyWith(
                        color: Color(0xFFABABAB),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      gender,
                      style: TextStyles.semiBold20.copyWith(
                        color: Color(0xFF519234),
                      ),
                    ),
                    Text(
                      'Gender',
                      style: TextStyles.semiBold14.copyWith(
                        color: Color(0xFFABABAB),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Healthy weight for the height:\n',
                    style: TextStyles.medium16.copyWith(
                      color: Color(0xFF0A1207),
                      height: 1.5,
                    ),
                  ),
                  TextSpan(
                    text: '${calculateMinWeight(height)} kg - ${calculateMaxWeight(height)} kg',
                    style: TextStyles.medium16.copyWith(
                      color: Color(0xFF519234),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
             SizedBox(height: media.height*0.02),
            CustomButton(
              height: 55,
              text: 'Close',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  String getBmiStatus() {
    if (bmi < 18.5) return "Underweight";
    if (bmi < 25) return "Normal";
    if (bmi < 30) return "Overweight";
    return "Obese";
  }

  Color getBmiColor() {
    if (bmi < 18.5) return Colors.blue;
    if (bmi < 25) return Colors.green;
    if (bmi < 30) return Colors.orange;
    return Colors.red;
  }
  double calculateMinWeight(int height) {
    double heightInMeters = height / 100;
    double minWeight = 18.5 * (heightInMeters * heightInMeters);
    return double.parse(minWeight.toStringAsFixed(1));
  }

  double calculateMaxWeight(int height) {
    double heightInMeters = height / 100;
    double maxWeight = 24.9 * (heightInMeters * heightInMeters);
    return double.parse(maxWeight.toStringAsFixed(1));
  }


}
