import 'package:flutter/material.dart';

class AppThemes {
  // Cores do tema
  static const Color primaryColor = Color(0xFF055AA3);
  static const Color highlightColor = Color(0xFFEDF4FB);
  static const Color descriptionColor = Color(0xFF51565A);
  static const Color cardColor = Color(0xFF172026);
  static const Color backgroundColor = Color(0xFF121517);

  // Tema escuro
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,

      // Cores principais
      colorScheme: const ColorScheme.dark(
        primary: primaryColor,
        surface: cardColor,
        onPrimary: Colors.white,
        onSurface: Colors.white,
      ),

      // Scaffold
      scaffoldBackgroundColor: backgroundColor,

      // AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: cardColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),

      // Bottom Navigation Bar
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF1A1A1A),
        selectedItemColor: Color(0xFF4A9EFF),
        unselectedItemColor: Color(0xFF9E9E9E),
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),

      // Cards
      cardTheme: CardTheme(
        color: cardColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Color(0xFF374151), width: 1),
        ),
      ),

      // Botões
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        ),
      ),

      // Textos
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Color(0xFF9CA3AF),
        ),
      ),
    );
  }

  // Tema claro
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,

      // Cores principais
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        surface: highlightColor,
        onPrimary: Colors.white,
        onSurface: cardColor,
      ),

      // Scaffold
      scaffoldBackgroundColor: const Color(0xFFD6DFE4),

      // AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: highlightColor,
        foregroundColor: cardColor,
        elevation: 0,
      ),

      // Bottom Navigation Bar
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFFF5F5F5),
        selectedItemColor: Color(0xFF055AA3),
        unselectedItemColor: Color(0xFF9E9E9E),
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),

      // Cards
      cardTheme: CardTheme(
        color: highlightColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: Color(0xFFE5E7EB), width: 1),
        ),
      ),

      // Botões
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        ),
      ),

      // Textos
      textTheme: const TextTheme(
        headlineLarge: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: cardColor,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: cardColor,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: cardColor,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: descriptionColor,
        ),
      ),
    );
  }
}
