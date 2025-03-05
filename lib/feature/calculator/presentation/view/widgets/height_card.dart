import 'package:bmi_calculator/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:simple_ruler_picker/simple_ruler_picker.dart';

class HeightCard extends StatelessWidget {
  const HeightCard({
    super.key,
    required this.selectedValue,
    this.onValueChanged,
  });

  final int selectedValue;
  final void Function(int)? onValueChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 205,
      padding: const EdgeInsets.all(25),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Color(0xFFFBF6EE),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 6,
            offset: Offset(0, 2),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Height (cm)',
            textAlign: TextAlign.center,
            style: TextStyles.medium16.copyWith(color: Color(0xFFABABAB)),
          ),
          const SizedBox(height: 15),
          Stack(
            alignment: Alignment.center,
            children: [
              SimpleRulerPicker(
                minValue: 100,
                maxValue: 200,
                initialValue: selectedValue,
                onValueChanged: onValueChanged,
                scaleLabelSize: 0,
                scaleBottomPadding: 0,
                scaleItemWidth: 12,
                longLineHeight: 30,
                shortLineHeight: 12,
                lineColor: Color(0xffC4C4C4),
                selectedColor: Color(0xffCE922A),
                labelColor: Colors.red,
                lineStroke: 3,
                height: 90,
              ),
              Positioned(
                top: 0,
                child: Container(
                  color: Color(0xFFFBF6EE),
                  child: Text(
                    "$selectedValue",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffCE922A),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
