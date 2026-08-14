
import 'package:flutter/material.dart';

enum TaskCategories {
  education(Icons.school, Color(0xFF9FA8DA)),
  health(Icons.favorite, Color(0xFFF48FB1)),
  home(Icons.home, Color(0xFFA5D6A7)),
  others(Icons.calendar_month, Color(0xFFCE93D8)),
  personal(Icons.person, Color(0xFF90CAF9)),
  shopping(Icons.shopping_bag, Color(0xFFFFB6C1)),
  social(Icons.people, Color(0xFFD7A86E)),
  travel(Icons.flight, Color(0xFFFFAB91)),
  work(Icons.work, Color(0xFFFFCC80));

  final IconData icon;
  final Color color;

  const TaskCategories(this.icon, this.color);
}