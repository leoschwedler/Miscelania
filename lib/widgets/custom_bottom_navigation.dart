import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTabTapped;

  const CustomBottomNavigation({
    super.key,
    required this.currentIndex,
    required this.onTabTapped,
  });

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final bottomNavTheme = theme.bottomNavigationBarTheme;

    return Container(
      decoration: BoxDecoration(
        color: bottomNavTheme.backgroundColor,
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.surface.withOpacity(0.2),
            width: 1,
          ),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Aba Atividades
              _buildTabItem(
                index: 0,
                icon: Icons.track_changes,
                label: 'Atividades',
                isActive: widget.currentIndex == 0,
                theme: theme,
              ),

              // Separador vertical
              Container(
                width: 1,
                height: 40,
                color: theme.colorScheme.surface.withOpacity(0.3),
              ),

              // Aba Repositórios
              _buildTabItem(
                index: 1,
                icon: Icons.folder,
                label: 'Repositórios',
                isActive: widget.currentIndex == 1,
                theme: theme,
              ),

              // Separador vertical
              Container(
                width: 1,
                height: 40,
                color: theme.colorScheme.surface.withOpacity(0.3),
              ),

              // Aba Perfil
              _buildTabItem(
                index: 2,
                icon: Icons.person,
                label: 'Perfil',
                isActive: widget.currentIndex == 2,
                theme: theme,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem({
    required int index,
    required IconData icon,
    required String label,
    required bool isActive,
    required ThemeData theme,
  }) {
    final bottomNavTheme = theme.bottomNavigationBarTheme;

    return GestureDetector(
      onTap: () => widget.onTabTapped(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color:
              isActive
                  ? theme.colorScheme.surface.withOpacity(0.3)
                  : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color:
                  isActive
                      ? bottomNavTheme.selectedItemColor
                      : bottomNavTheme.unselectedItemColor,
              size: 24,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color:
                    isActive
                        ? bottomNavTheme.selectedItemColor
                        : bottomNavTheme.unselectedItemColor,
                fontSize: 12,
                fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
