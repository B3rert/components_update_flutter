import 'package:flutter/material.dart' show IconData, Widget;

class Menuoption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  Menuoption(
      {required this.route,
      required this.icon,
      required this.name,
      required this.screen});
}
