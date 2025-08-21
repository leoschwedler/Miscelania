import 'package:flutter/material.dart';

class ThemeModel {
  final ThemeMode themeMode;
  final bool isDark;
  final String themeName;

  const ThemeModel({
    required this.themeMode,
    required this.isDark,
    required this.themeName,
  });

  // Factory constructor para tema escuro
  factory ThemeModel.dark() {
    return const ThemeModel(
      themeMode: ThemeMode.dark,
      isDark: true,
      themeName: 'Dark',
    );
  }

  // Factory constructor para tema claro
  factory ThemeModel.light() {
    return const ThemeModel(
      themeMode: ThemeMode.light,
      isDark: false,
      themeName: 'Light',
    );
  }

  // Factory constructor para tema do sistema
  factory ThemeModel.system() {
    return const ThemeModel(
      themeMode: ThemeMode.system,
      isDark: false,
      themeName: 'System',
    );
  }

  // Método para alternar entre temas
  ThemeModel toggle() {
    if (isDark) {
      return ThemeModel.light();
    } else {
      return ThemeModel.dark();
    }
  }

  // Método para definir tema específico
  ThemeModel setTheme(ThemeMode mode) {
    switch (mode) {
      case ThemeMode.dark:
        return ThemeModel.dark();
      case ThemeMode.light:
        return ThemeModel.light();
      case ThemeMode.system:
        return ThemeModel.system();
    }
  }
}
