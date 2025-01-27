// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:equatable/equatable.dart';

import 'package:habbit/utils/habit_categories.dart';

import '../../utils/habit_keys.dart';

class Habit extends Equatable {
  final int? id;
  final String title;
  final String note;
  final String time;
  final String date;
  final HabitCategories category;
  final bool isCompleted;

  const Habit(
      {this.id,
      required this.title,
      required this.note,
      required this.time,
      required this.date,
      required this.category,
      required this.isCompleted});

  @override
  List<Object> get props {
    return [
      id!,
      title,
      note,
      time,
      date,
      isCompleted,
    ];
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      HabitKeys.id: id,
      HabitKeys.title: title,
      HabitKeys.note: note,
      HabitKeys.time: time,
      HabitKeys.date: date,
      HabitKeys.category: category.name,
      HabitKeys.isCompleted: isCompleted,
    };
  }

  factory Habit.fromJson(Map<String, dynamic> map) {
    return Habit(
      id: map[HabitKeys.id],
      title: map[HabitKeys.title],
      note: map[HabitKeys.note],
      time: map[HabitKeys.time],
      date: map[HabitKeys.date],
      category: HabitCategories.stringToCategory(map[HabitKeys.category]),
      isCompleted: map[HabitKeys.isCompleted],
    );
  }

  // String toJson() => json.encode(toMap());

  // factory Habit.fromJson(String source) => Habit.fromMap(json.decode(source) as Map<String, dynamic>);
}
