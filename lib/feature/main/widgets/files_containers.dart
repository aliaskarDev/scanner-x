import 'package:flutter/material.dart';
import 'package:scanner_x/constants/titles.dart';
import 'package:scanner_x/ui/colors.dart';
import 'package:scanner_x/ui/text_style.dart';

class FilesContainer extends StatelessWidget {
  const FilesContainer({
    super.key,
    required this.icon,
  });

  final String icon;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.3,
      height: height * 0.24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          14,
        ),
        color: AppColors.black,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Image.asset(
                icon,
                scale: 4,
              ),
              SizedBox(height: height * 0.01),
              Text(
                scanText,
                style: AppTextStyle.style400w14.copyWith(
                  color: AppColors.darkText,
                ),
              ),
              Text(
                scanDate,
                style: AppTextStyle.style500w12.copyWith(
                  color: AppColors.greyText,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
