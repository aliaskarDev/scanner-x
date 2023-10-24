import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scanner_x/constants/icons_images_path.dart';
import 'package:scanner_x/feature/main/main_screen.dart';
// import 'package:scanner_x/feature/premium/premium_screen.dart';
// import 'package:scanner_x/feature/settings/settings_screen.dart';
import 'package:scanner_x/feature/tools/tools_screen.dart';
import 'package:scanner_x/feature/welcome/screens/welcome_screen.dart';
import 'package:scanner_x/ui/colors.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyBottomBarState();
  }
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    const MainScreen(),
    const ToolsScreen(),
    const WelcomeScreen(),
    // const PremiumScreen(),
    // const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onTabTapped(1);
        },
        tooltip: "Add Savings",
        elevation: 2.0,
        backgroundColor: AppColors.blue,
        child: SvgPicture.asset(
          MyIcons.premium,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'money',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'circle',
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
