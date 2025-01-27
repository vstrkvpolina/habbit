import 'package:flutter/material.dart';
import 'package:habbit/utils/habit_keys.dart';

@immutable
class DBKeys {
  const DBKeys._();
  static const String dbName = 'habits.db';
  static const String dbTable = 'habits';
  static const String idColumn = HabitKeys.id;
  static const String titleColumn = HabitKeys.time;
  static const String noteColumn = HabitKeys.note;
  static const String timeColumn = HabitKeys.time;
  static const String dateColumn = HabitKeys.date;
  static const String categoryColumn = HabitKeys.category;
  static const String isCompletedColumn = HabitKeys.isCompleted;
}
