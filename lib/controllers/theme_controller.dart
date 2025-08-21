import 'package:flutter/material.dart';
import 'package:miscelania/models/theme_model.dart';

class ThemeController extends ChangeNotifier {
  ThemeModel _themeModel = ThemeModel.dark();

  ThemeMode get themeMode => _themeModel.themeMode;
  ThemeModel get themeModel => _themeModel;
  bool get isDark => _themeModel.isDark;
  String get themeName => _themeModel.themeName;

  void toggleTheme() {
    _themeModel = _themeModel.toggle();
    notifyListeners();
  }

  void setTheme(ThemeMode mode) {
    _themeModel = _themeModel.setTheme(mode);
    notifyListeners();
  }
}
