import 'package:flutter/material.dart';
import 'package:scanner_x/constants/titles.dart';
import 'package:scanner_x/ui/colors.dart';
import 'package:scanner_x/ui/text_style.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/auth');
      },
      child: Container(
        width: width * 0.92,
        height: height * 0.075,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            47,
          ),
          color: AppColors.blue,
        ),
        child: Center(
          child: Text(
            WelcomeTitles.next,
            style: AppTextStyle.style400w16.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
