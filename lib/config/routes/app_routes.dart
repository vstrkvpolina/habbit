import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:habbit/config/routes/routes.dart';
import 'package:habbit/screens/screen.dart';

final navigationKey = GlobalKey<NavigatorState>();

final appRoutes = [
  GoRoute(
    path: RouteLocation.home,
    parentNavigatorKey: navigationKey,
    builder: HomeScreen.builder,
  ),
];