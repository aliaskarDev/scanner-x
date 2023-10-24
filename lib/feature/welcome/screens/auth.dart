import 'package:flutter/material.dart';
import 'package:scanner_x/constants/icons_images_path.dart';
import 'package:scanner_x/constants/titles.dart';
import 'package:scanner_x/feature/welcome/widgets/auth_button.dart';
import 'package:scanner_x/ui/colors.dart';
import 'package:scanner_x/ui/text_style.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Image.asset(MyPhotos.authFrame),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.24,
              vertical: height * 0.038,
            ),
            child: Text(
              WelcomeTitles.welcomeToScannerX,
              style: AppTextStyle.style400w22.copyWith(
                color: AppColors.black,
              ),
            ),
          ),
          const AuthButton(
            icon: MyIcons.google,
            title: WelcomeTitles.nextGoogle,
          ),
          SizedBox(height: height * 0.03),
          const AuthButton(
            icon: MyIcons.apple,
            title: WelcomeTitles.nextApple,
          ),
          SizedBox(height: height * 0.04),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/bottom');
            },
            child: Text(
              WelcomeTitles.nextwithoutReg,
              style: AppTextStyle.style400w14.copyWith(
                color: AppColors.darkText,
              ),
            ),
          ),
          SizedBox(height: height * 0.034),
          Text(
            WelcomeTitles.agree,
            style: AppTextStyle.style400w14.copyWith(
              color: AppColors.lightGrey,
            ),
          ),
        ],
      ),
    );
  }
}
