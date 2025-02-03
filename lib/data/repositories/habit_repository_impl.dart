import 'package:habbit/data/data.dart';
import 'package:habbit/data/datasource/habit_datasource.dart';

class HabitRepositoryImpl implements HabitRepository {
  final HabitDatasource _datasource;

  HabitRepositoryImpl(this._datasource);
  @override
  Future<void> createHabit(Habit habit) async {
    try {
      await _datasource.addHabit(habit);
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<void> deleteHabit(Habit habit) async {
    try {
      await _datasource.deleteHabit(habit);
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<List<Habit>> getAllHabits() async {
    try {
      return await _datasource.getAllHabits();
    } catch (e) {
      throw '$e';
    }
  }

  @override
  Future<void> updateHabit(Habit habit) async {
    try {
      await _datasource.updateHabit(habit);
    } catch (e) {
      throw '$e';
    }
  }
}
