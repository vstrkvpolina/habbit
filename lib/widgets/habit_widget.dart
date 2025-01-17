import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:habbit/data/data.dart';
import 'package:habbit/utils/extensions.dart';
import 'package:habbit/widgets/widgets.dart';

// task details

class HabitWidget extends StatelessWidget {
  const HabitWidget({super.key, required this.habit});

  final Habit habit;

  @override
  Widget build(BuildContext context) {
    final style = context.textTheme;
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          CircleContainer(
            color: habit.category.color.withValues(blue: 0.3),
            child: Icon(
              habit.category.icon,
              color: habit.category.color,
            ),
          ), // TODO
          const Gap(16),
          Text(habit.title,
              style: style.titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20)),
          Text(habit.time, style: style.titleMedium),
          const Gap(16),
          Visibility(
            visible: !habit.isCompleted,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('habit maintained}'),
                Icon(Icons.check_box, color: habit.category.color),
              ],
            ),
          ),
          const Gap(16),
           Divider(
            thickness: 1.5,
            color: habit.category.color,
          ),
          const Gap(16),
          Text(
            habit.note.isEmpty ? 'No description' : habit.note,
          ),
          const Gap(10),
        ],
      ),
    );
  }
}
