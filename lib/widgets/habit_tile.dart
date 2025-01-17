import 'package:flutter/material.dart';
import 'package:habbit/data/data.dart';
import 'package:gap/gap.dart';
import 'package:habbit/utils/extensions.dart';

class HabitTile extends StatelessWidget {
  const HabitTile({super.key, required this.habit});
  final Habit habit;

  @override
  Widget build(BuildContext context) {
    
    final style = context.textTheme;
    final double iconOpacity = habit.isCompleted ? 0.3 : 0.5;
    final backgroundOpacity = habit.isCompleted ? 0.1 : 0.3;
    final textDecoration =
        habit.isCompleted ? TextDecoration.lineThrough : TextDecoration.none;
    final fontWeight = habit.isCompleted? FontWeight.normal: FontWeight.bold;
    final Function(bool?)?  onCompleted;

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
              color: habit.category.color
                  .withValues(blue: 0.2), // new type shi backgroundOpacity
              border: Border.all(
                width: 2,
                color: habit.category.color
                    .withValues(blue: 0.2), // backgroundOpacity
              ),
            ),
            child: Center(
              child: Icon(
                habit.category.icon,
                color: habit.category.color.withValues(blue: 0.2), // TODO
              ),
            ),
          ),
          const Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(habit.title,
                    style: style.titleMedium?.copyWith(
                      decoration: textDecoration,
                      fontSize: 20,
                      fontWeight: fontWeight,
                    )),
                Text(habit.time,
                    style: style.titleMedium?.copyWith(
                      decoration: textDecoration,
                    )),
              ],
            ),
          ),
          Checkbox(
            value: habit.isCompleted,
            onChanged: (value) {}, // onCompleted
          ),
        ],
      ),
    );
  }
}
