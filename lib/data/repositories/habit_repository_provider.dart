import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habbit/data/data.dart';

final habitRepositoryProvider = Provider<HabitRepository>((ref) {
  final datasource = ref.watch(habitDatasourceProvider);
  return HabitRepositoryImpl(datasource);
});