// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:habbit/utils/habit_categories.dart';
class Habit extends Equatable {
  final int? id;
  final String title;
  final String note;
  final String time;
  final String date;
  final HabitCategories category;
  final bool isCompleted;

  const Habit({
      required this.id,
      required this.title,
      required this.note,
      required this.time,
      required this.date,
      required this.category,
      required this.isCompleted
    });



  @override
  List<Object> get props {
    return [
      id!,
      title,
      note,
      time,
      date,
      // TODO category
      isCompleted,
    ];
  }
}
