import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scanner_x/ui/colors.dart';
import 'package:scanner_x/ui/text_style.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.icon,
    required this.title,
  });

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 0.9,
      height: height * 0.08,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.grey,
        ),
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
              ),
              child: SvgPicture.asset(icon),
            ),
            Text(
              title,
              style: AppTextStyle.style400w14.copyWith(
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
