import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:miscelania/controllers/theme_controller.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = GetIt.instance<ThemeController>();
    final theme = Theme.of(context);

    return Row(
      children: [
        // Lado esquerdo - Ícone e título
        Expanded(
          child: Row(
            children: [
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sobre o dev', style: theme.textTheme.headlineLarge),
                    Text(
                      'Flutterando Masterclass',
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Lado direito - Botão de tema
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
    );
  }
}
