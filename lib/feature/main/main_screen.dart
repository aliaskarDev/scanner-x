import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scanner_x/constants/icons_images_path.dart';
import 'package:scanner_x/constants/titles.dart';
import 'package:scanner_x/feature/main/widgets/files_containers.dart';
import 'package:scanner_x/feature/main/widgets/main_textfield.dart';
import 'package:scanner_x/feature/main/widgets/menu_container.dart';
import 'package:scanner_x/ui/colors.dart';
import 'package:scanner_x/ui/text_style.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          scannerX,
          style: AppTextStyle.style400w18.copyWith(
            color: AppColors.darkText,
          ),
        ),
      ),
      body: Column(
        children: [
          const MenuContainer(),
          SizedBox(height: height * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * 0.04,
            ),
            child: Row(
              children: [
                Text(
                  allFiles,
                  style: AppTextStyle.style400w18.copyWith(
                    color: AppColors.darkText,
                  ),
                ),
                const Spacer(),
                SvgPicture.asset(
                  MyIcons.oneColumn,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.04,
                  ),
                  child: SvgPicture.asset(
                    MyIcons.addFiles,
                  ),
                ),
                SvgPicture.asset(
                  MyIcons.changeColumn,
                ),
              ],
            ),
          ),
          const MainTextField(
            title: search,
          ),
          SizedBox(height: height * 0.01),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.02,
                ),
                shrinkWrap: true,
                itemBuilder: (context, index) => FilesContainer(
                  icon: filesPhotos[index],
                ),
                itemCount: filesPhotos.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
