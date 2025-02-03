import 'package:habbit/data/models/habit.dart';

abstract class HabitRepository {
  Future<void> createHabit(Habit habit);
  Future<void> updateHabit(Habit habit);
  Future<void> deleteHabit(Habit habit);
  Future<List<Habit>> getAllHabits();
}
