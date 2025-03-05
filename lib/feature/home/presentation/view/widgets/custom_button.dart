import 'package:bmi_calculator/core/theme/text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onTap,
    required this.text,
    this.height = 70,
  });

  final void Function()? onTap;
  final String text;
  final double height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(25),

      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: height,
        margin: const EdgeInsets.symmetric(horizontal: 10),
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: Color(0xFF65B741),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x1E000000),
              blurRadius: 3,
              offset: Offset(1, 2),
              spreadRadius: 1,
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyles.semiBold32.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
