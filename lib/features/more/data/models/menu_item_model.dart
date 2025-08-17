import 'package:flutter/material.dart';

class MenuItem {
  final IconData icon;
  final String title;
  final Color iconColor;
  final Color backgroundColor;
  final VoidCallback? onTap;
  final Widget? trailing;
  final double? fontSize;

  const MenuItem({
    required this.icon,
    required this.title,
    required this.iconColor,
    required this.backgroundColor,
    this.onTap,
    this.trailing,
    this.fontSize,
  });
}

class MenuSection {
  final String title;
  final List<MenuItem> items;

  const MenuSection({required this.title, required this.items});
}
