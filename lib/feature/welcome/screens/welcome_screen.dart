import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scanner_x/constants/icons_images_path.dart';
import 'package:scanner_x/constants/titles.dart';
import 'package:scanner_x/feature/welcome/widgets/welcome_button.dart';
import 'package:scanner_x/ui/colors.dart';
import 'package:scanner_x/ui/text_style.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: width * 1,
              height: height * 0.7,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    MyPhotos.welcomePhoto,
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close_rounded,
                    ),
                  ),
                  SizedBox(height: height * 0.4),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.18),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          MyIcons.left,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.05,
                            vertical: height * 0.02,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                WelcomeTitles.first,
                                style: AppTextStyle.style400w16.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                              SizedBox(height: height * 0.005),
                              Text(
                                WelcomeTitles.user,
                                style: AppTextStyle.style400w18.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SvgPicture.asset(
                          MyIcons.right,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.015),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.24),
                    child: Text(
                      WelcomeTitles.welcomeToScannerX,
                      style: AppTextStyle.style400w22.copyWith(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: height * 0.3,
              color: AppColors.welcomeBacgraund,
              child: Column(
                children: [
                  SizedBox(height: height * 0.03),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: SvgPicture.asset(MyIcons.scanIocn),
                      ),
                      Text(
                        WelcomeTitles.scaneText,
                        style: AppTextStyle.style400w14.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: SvgPicture.asset(MyIcons.text),
                      ),
                      Text(
                        WelcomeTitles.oCR,
                        style: AppTextStyle.style400w14.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width * 0.04),
                        child: SvgPicture.asset(MyIcons.share),
                      ),
                      Text(
                        WelcomeTitles.share,
                        style: AppTextStyle.style400w14.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.04),
                  const WelcomeButton()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
