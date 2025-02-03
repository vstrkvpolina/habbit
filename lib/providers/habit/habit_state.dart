// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:habbit/data/models/habit.dart';

class HabitState extends Equatable {
  final List<Habit> habits;

  const HabitState(this.habits);
  const HabitState.initial({
    this.habits = const [],
  });

  HabitState copyWith({
    List<Habit>? habits,
  }) {
    return HabitState(
      habits ?? this.habits,
    );
  }

  @override
  List<Object> get props => [habits];
}
