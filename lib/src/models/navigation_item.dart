import 'package:flutter/material.dart';

class NavigationItem {
  final String title;
  final Widget icon;
  final Widget selectedIcon;
  final Color color;
  final List<Color> gradientColors;
  final String? badge;

  NavigationItem({
    required this.title,
    required this.icon,
    required this.selectedIcon,
    required this.color,
    required this.gradientColors,
    this.badge,
  });
}
