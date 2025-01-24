import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habbit/utils/habit_categories.dart';

final categoryProvider = StateProvider.autoDispose<HabitCategories>((ref) {
  return HabitCategories.others;
});
