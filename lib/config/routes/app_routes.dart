import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habbit/config/routes/routes.dart';
import 'package:habbit/screens/screens.dart';
import 'package:habbit/config/routes/route_location.dart';


final navigationKey = GlobalKey<NavigatorState>();

final appRoutes = [
  GoRoute(
    path: RouteLocation.home,
    parentNavigatorKey: navigationKey,
    builder: HomeScreen.builder,
  ),
  GoRoute(
    path: RouteLocation.newHabit,
    parentNavigatorKey: navigationKey,
    builder: NewHabitScreen.builder,
  ),
];