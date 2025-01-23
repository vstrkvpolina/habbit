import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habbit/widgets/widgets.dart';

class NewHabitScreen extends StatelessWidget {
  static NewHabitScreen builder(BuildContext contex, GoRoute state) =>
      const NewHabitScreen();

  const NewHabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  DisplayWhiteText(text: 'Add new habit'), // delete const
      ),
    );
  }
}
