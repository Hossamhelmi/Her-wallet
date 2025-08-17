import 'package:flutter/material.dart';

class PlanBenefitModel {
  final String title;
  final String subtitle;
  final String description;
  final IconData? icon;

  const PlanBenefitModel({
    required this.title,
    required this.subtitle,
    required this.description,
    this.icon,
  });
}
