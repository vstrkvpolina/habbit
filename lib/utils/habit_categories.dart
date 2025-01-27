import 'package:flutter/material.dart';

enum HabitCategories {
  education(Icons.school, Color.fromARGB(255, 176, 196, 225)),
  health(Icons.healing, Color.fromARGB(255, 78, 92, 112)),
  home(Icons.home, Color.fromARGB(255, 38, 67, 111)),
  others(Icons.calendar_month, Color.fromARGB(255, 3, 22, 52)),
  personal(Icons.person, Color.fromARGB(255, 28, 32, 37)),
  shopping(Icons.shopping_bag, Color.fromARGB(255, 0, 59, 148)),
  social(Icons.social_distance_rounded, Color.fromARGB(255, 176, 196, 225)),
  travel(Icons.travel_explore, Color.fromARGB(255, 82, 82, 82)),
  work(Icons.work, Color.fromARGB(255, 79, 60, 60));

  static HabitCategories stringToCategory(String name) {
    try {
      return HabitCategories.values.firstWhere(
        (category) => category.name == name,
      );
    } catch (e) {
      return HabitCategories.others;
    }
  }

  final IconData icon;
  final Color color;
  const HabitCategories(this.icon, this.color);
}
