import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:habbit/data/data.dart';
import 'package:habbit/utils/extensions.dart';
import 'package:habbit/utils/utils.dart';
import 'package:habbit/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static HomeScreen builder(BuildContext context, GoRouterState state) =>
      const HomeScreen();
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: 'Dec, 2024',
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    DisplayWhiteText(
                      text: 'Habits',
                      fontSize: 40,
                    ),
                  ], // here will  be processing
                ),
              ),
            ],
          ),
          Positioned(
            top: 160,
            left: 0,
            right: 0,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const DisplayListOfHabits(
                      habits: [
                        Habit(
                          /* here's the problem*/
                          id: 1, //da fuk
                          title: 'title 1',
                          note: 'note',
                          time: '23:23',
                          date: 'Jan, 15',
                          isCompleted: false,
                          category: HabitCategories.shopping,
                        ),
                        Habit(
                          /* here's the problem*/
                          id: 1, //da fuk
                          title: 'title 2',
                          note: 'note',
                          time: '23:53',
                          date: 'Jan, 15',
                          isCompleted: false,
                          category: HabitCategories.education,
                        ),
                      ],
                    ),
                    const Gap(20),
                    Text(
                      'Completed',
                      style: context.textTheme.headlineMedium,
                    ),
                    const Gap(20),
                    const DisplayListOfHabits(
                      habits: [
                        Habit(
                          /* here's the problem*/
                          id: 1, //da fuk
                          title: 'title 1',
                          note: 'note',
                          time: '23:23',
                          date: 'Jan, 15',
                          isCompleted: true,
                          category: HabitCategories.personal,
                        ),
                        Habit(
                          /* here's the problem*/
                          id: 1, //da fuk
                          title: 'title 2',
                          note: 'note',
                          time: '23:53',
                          date: 'Jan, 15',
                          isCompleted: true,
                          category: HabitCategories.work,
                        ),
                      ],
                      isCompletedHabits: true,
                    ),
                    const Gap(20),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: DisplayWhiteText(text: 'Add new habit'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// all fependency that i ll be use in thes project
