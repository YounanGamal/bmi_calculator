import 'package:bmi_calculator/core/theme/text_styles.dart';
import 'package:bmi_calculator/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    super.key,
    this.onTapMinus,
    this.onTapPlus,
    required this.number,
    required this.text,
  });

  final void Function()? onTapMinus;
  final void Function()? onTapPlus;
  final int number;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 184,
        padding: const EdgeInsets.all(25),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Color(0xFFFBF6EE),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
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
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyles.medium16.copyWith(color: Color(0xFFABABAB)),
            ),
            Text(
              '$number',
              style: TextStyles.bold35.copyWith(color: Color(0xFFCE9229)),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: onTapMinus,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: SvgPicture.asset(Assets.imagesMinus),
                  ),
                ),
                InkWell(
                  onTap: onTapPlus,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: SvgPicture.asset(Assets.imagesPlus),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
