import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habbit/data/data.dart';

final habitDatasourceProvider = Provider<HabitDatasource>((ref) {
  return HabitDatasource();
});
