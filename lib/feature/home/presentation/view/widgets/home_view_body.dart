import 'package:bmi_calculator/core/route/page_route_name.dart';
import 'package:bmi_calculator/core/theme/app_colors.dart';
import 'package:bmi_calculator/core/theme/text_styles.dart';
import 'package:bmi_calculator/feature/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/feature/home/presentation/view/widgets/custom_button.dart';
import 'package:bmi_calculator/feature/home/presentation/view/widgets/gender_card.dart';
import 'package:bmi_calculator/generated/assets.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          const SizedBox(height: 40),
          CustomAppBar(),
          const SizedBox(height: 40),
          Text(
            'Please choose your gender',
            textAlign: TextAlign.center,
            style: TextStyles.medium24,
          ),
          const SizedBox(height: 30),
          GenderCard(
            sideColor: isMale ? Colors.blueAccent : Colors.transparent,
            gender: 'Male',
            image: Assets.imagesMale,
            cardColor: AppColors.maleColor,
            textColor: AppColors.primaryColor,
            onTap: () {
              setState(() {
                isMale = true;
              });
            },
          ),
          const SizedBox(height: 30),
          GenderCard(
            sideColor: isMale ? Colors.transparent : Colors.blueAccent,
            gender: 'Female',
            image: Assets.imagesFemale,
            cardColor: AppColors.femaleColor,
            textColor: Color(0xffCE922A),
            onTap: () {
              setState(() {
                isMale = false;
              });
            },
          ),
          const SizedBox(height: 60),
          CustomButton(onTap: () {
            Navigator.pushNamed(context, PageRouteName.calculator,arguments: isMale);
          }, text: 'Continue'),
        ],
      ),
    );
  }
}
