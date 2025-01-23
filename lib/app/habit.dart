import 'package:flutter/material.dart';
import 'package:habbit/config/routes/routes.dart';
import 'package:habbit/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Habit extends ConsumerWidget {
  const Habit({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final routerConfig = ref.watch(routesProvider);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: routerConfig,
    );
  }
}
