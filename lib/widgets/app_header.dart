import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:miscelania/controllers/theme_controller.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = GetIt.instance<ThemeController>();
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          // Logo azul
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              Icons.favorite,
              color: theme.colorScheme.onPrimary,
              size: 20,
            ),
          ),

          const SizedBox(width: 12),

          // Títulos
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Atividades', style: theme.textTheme.headlineLarge),
                Text(
                  'Flutterando Masterclass',
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),

          // Ícone de lua (dark mode)
          AnimatedBuilder(
            animation: themeController,
            builder: (context, _) {
              final isDark = themeController.themeMode == ThemeMode.dark;
              return IconButton(
                onPressed: themeController.toggleTheme,
                icon: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  transitionBuilder: (child, animation) {
                    return RotationTransition(turns: animation, child: child);
                  },
                  child: Icon(
                    isDark ? Icons.light_mode : Icons.dark_mode,
                    key: ValueKey<bool>(isDark),
                    color: theme.colorScheme.onSurface,
                    size: 24,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
