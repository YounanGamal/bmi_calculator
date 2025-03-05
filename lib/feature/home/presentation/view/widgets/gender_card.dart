import 'package:bmi_calculator/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.gender,
    required this.image,
    required this.cardColor,
    required this.textColor,
    this.onTap, required this.sideColor,
  });

  final String gender;
  final String image;
  final Color cardColor;
  final Color textColor;
  final Color sideColor;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 180,
        decoration: ShapeDecoration(
          color: cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: sideColor, width: 3),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              gender,
              textAlign: TextAlign.center,
              style: TextStyles.semiBold32.copyWith(color: textColor),
            ),
            SvgPicture.asset(image),
          ],
        ),
      ),
    );
  }
}
