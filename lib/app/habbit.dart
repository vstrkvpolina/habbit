import 'package:flutter/material.dart';
import 'package:habbit/screens/screen.dart';
import 'package:habbit/config/theme/app_theme.dart';

class Habbit extends StatelessWidget {
  const Habbit({super.key});

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
