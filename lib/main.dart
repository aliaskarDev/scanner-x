import 'package:flutter/material.dart';
import 'package:scanner_x/feature/bottom_bar/bottom_bar.dart';
import 'package:scanner_x/feature/welcome/screens/auth.dart';
import 'package:scanner_x/feature/welcome/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
       initialRoute: '/welcome',
      routes: {
        '/auth': (context) => const Auth(),
        '/welcome': (context) => const WelcomeScreen(),
        '/bottom': (context) => const MyBottomBar(),
      },
    );
  }
}
