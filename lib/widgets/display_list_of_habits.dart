import 'package:flutter/material.dart';
import 'package:habbit/data/data.dart';
import 'package:habbit/utils/extensions.dart';
import 'package:habbit/widgets/widgets.dart';

class DisplayListOfHabits extends StatelessWidget {
  const DisplayListOfHabits({
    super.key,
    required this.habits,
    this.isCompletedHabits = false,
  });

  final List<Habit> habits;
  final bool isCompletedHabits;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    final height =
        isCompletedHabits ? deviceSize.height * 0.25 : deviceSize.height * 0.3;

    final emptyHabitsMessage = isCompletedHabits
        ? 'There is no completed habit yet'
        : 'There is no habit to sustain';

    return CommonContainer(
      height: height,
      child: habits.isEmpty
          ? Center(
              child: Text(
                emptyHabitsMessage,
                style: context.textTheme.headlineSmall,
              ),
            )
          : ListView.separated(
              shrinkWrap: true,
              itemCount: habits.length,
              padding: EdgeInsets.zero,
              itemBuilder: (ctx, index) {
                final habit = habits[index];
                return HabitTile(habit: habit);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(thickness: 1.5);
              },
            ),
    );
  }
}
