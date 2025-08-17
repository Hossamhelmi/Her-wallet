import 'package:flutter/material.dart';

class AppState {
  static final AppState _instance = AppState._internal();
  factory AppState() => _instance;
  AppState._internal();

  VoidCallback? _onLocaleChanged;

  void setOnLocaleChanged(VoidCallback callback) {
    _onLocaleChanged = callback;
  }

  void notifyLocaleChanged() {
    _onLocaleChanged?.call();
  }
}
