import 'package:flutter/material.dart';
import 'package:habbit/screens/screens.dart';
import 'package:habbit/config/theme/app_theme.dart';

class Habit extends StatelessWidget {
  const Habit({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home:const HomeScreen(),
    );
  }
}
