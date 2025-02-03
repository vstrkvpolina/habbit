import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habbit/data/data.dart';
import 'package:habbit/providers/providers.dart';

final habitProvider = StateNotifierProvider<HabitNotifier, HabitState>((ref) {
  final repository = ref.watch(habitRepositoryProvider);
  return HabitNotifier(repository);
});
