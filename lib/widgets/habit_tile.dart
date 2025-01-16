import 'package:flutter/material.dart';
import 'package:habbit/data/data.dart';
import 'package:gap/gap.dart';
import 'package:habbit/utils/extensions.dart';

class HabitTile extends StatelessWidget {
  const HabitTile({super.key, required this.habit});
  final Habit habit;

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final style = context.textTheme;
    final double iconOpacity = habit.isCompleted? 0.3 : 0.5;
    final backgroundOpacity = habit.isCompleted? 0.1 : 0.3;


    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        top: 10,
        bottom: 10,
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(9.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: habit.category.color, // new type shi backgroundOpacity
              border: Border.all(
                width: 2,
                color: habit.category.color, // backgroundOpacity
              ),
            ),
            child: Center(
              child: Icon(
                habit.category.icon,
                color: habit.category.color, // TODO
              ),
            ),
          ),
          const Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(habit.title),
                Text(habit.time),
              ],
            ),
          ),
          Checkbox(
            value: habit.isCompleted,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
