import 'package:flutter/material.dart';
import 'package:miscelania/models/navigation_model.dart';

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
              ...NavigationItemModel.allItems.asMap().entries.map((entry) {
                final index = entry.key;
                final item = entry.value;

                return Row(
                  children: [
                    _buildTabItem(
                      index: index,
                      icon: item.icon,
                      label: item.title,
                      isActive: widget.currentIndex == index,
                      theme: theme,
                    ),

                    // Separador vertical (exceto para o último item)
                    if (index < NavigationItemModel.allItems.length - 1)
                      Container(
                        width: 1,
                        height: 40,
                        color: theme.colorScheme.surface.withOpacity(0.3),
                      ),
                  ],
                );
              }).toList(),
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
