import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scanner_x/constants/icons_images_path.dart';
import 'package:scanner_x/ui/colors.dart';
import 'package:scanner_x/ui/text_style.dart';

class MainTextField extends StatelessWidget {
  const MainTextField({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.03, vertical: height * 0.03),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.lightBlue,
          hintText: title,
          hintStyle: AppTextStyle.style400w14.copyWith(
            color: AppColors.greyText,
          ),
          contentPadding: const EdgeInsets.only(left: 10, top: 10, bottom: 20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(
              MyIcons.ex,
            ),
          ),
        ),
      ),
    );
  }
}
