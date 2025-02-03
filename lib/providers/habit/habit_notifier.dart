import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habbit/data/data.dart';
import 'package:habbit/providers/providers.dart';


class HabitNotifier extends StateNotifier<HabitState> {
  final HabitRepository _repository;
  HabitNotifier(this._repository): super(const HabitState.initial());

  Future<void> createHabit(Habit habit) async {
    try {
      await _repository.createHabit(habit);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
      Future<void> updateHabit(Habit habit) async {
    try {
      final isComplited = !habit.isCompleted;
      final updateHabit = habit.copyWith(isCompleted: isComplited);
      await _repository.updateHabit(updateHabit);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
    Future<void> deleteHabit(Habit habit) async {
    try {
      await _repository.deleteHabit(habit);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
    Future<void> getHabits () async {
    try {
      final habits = await _repository.getAllHabits();
      state = state.copyWith(habits: habits);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}