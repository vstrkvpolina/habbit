import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:habbit/widgets/widgets.dart';


class NewHabitScreen extends StatelessWidget {
  static NewHabitScreen builder(BuildContext contex, GoRouterState state) =>
      const NewHabitScreen();

  const NewHabitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const DisplayWhiteText(text: '   '), // delete const
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const CommonTextField(
                title: 'Habit',
                hintText: 'Want to add new habit?',
              ),
              const Gap(16),
              const SelectCategory(),
              const Gap(16),
              const SelectDateTime(),
              const Gap(16),
              const CommonTextField(
                title: 'Note',
                hintText: 'habit note',
                maxLines: 3,
              ),
              const Gap(60),
              ElevatedButton(
                  onPressed: () {}, child: const DisplayWhiteText(text: 'Save'))
            ],
          ),
        ),
      ),
    );
  }
}
