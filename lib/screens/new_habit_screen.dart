import 'package:flutter/material.dart';
import 'package:habbit/widgets/widgets.dart';

class NewHabitScreen extends StatelessWidget {
  const NewHabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: DisplayWhiteText(text: 'Add new habit'),
      ),
    );
  }
}