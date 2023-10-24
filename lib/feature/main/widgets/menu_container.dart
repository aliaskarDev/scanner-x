import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scanner_x/constants/icons_images_path.dart';
import 'package:scanner_x/constants/titles.dart';
import 'package:scanner_x/ui/colors.dart';
import 'package:scanner_x/ui/text_style.dart';

class MenuContainer extends StatelessWidget {
  const MenuContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width * 1,
      height: height * 0.12,
      margin: EdgeInsets.symmetric(
        horizontal: width * 0.03,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.04,
        vertical: height * 0.025,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          14,
        ),
        color: AppColors.lightBlue,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.04,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            14,
          ),
          color: AppColors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              menu,
              style: AppTextStyle.style400w18.copyWith(
                color: AppColors.darkText,
              ),
            ),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                MyIcons.open,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
