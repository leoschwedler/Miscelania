import 'package:flutter/material.dart';
import 'package:miscelania/models/technology_model.dart';
import 'package:miscelania/mock/sample_data.dart';

class FavoriteTechnologies extends StatelessWidget {
  final List<TechnologyModel>? technologies;

  const FavoriteTechnologies({super.key, this.technologies});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tecnologias Favoritas',
          style: theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 16),

        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount:
                technologies?.length ?? SampleData.sampleTechnologies.length,
            itemBuilder: (context, index) {
              final tech =
                  technologies?[index] ?? SampleData.sampleTechnologies[index];
              return _TechnologyCard(
                name: tech.name,
                icon: _getIconData(tech.iconName),
                color: Color(tech.colorValue),
              );
            },
          ),
        ),
      ],
    );
  }

  // Método para converter string de ícone em IconData
  IconData _getIconData(String iconName) {
    switch (iconName) {
      case 'flutter_dash':
        return Icons.flutter_dash;
      case 'code':
        return Icons.code;
      case 'work':
        return Icons.work;
      case 'school':
        return Icons.school;
      case 'home':
        return Icons.home;
      case 'person':
        return Icons.person;
      case 'folder':
        return Icons.folder;
      default:
        return Icons.flutter_dash; // Ícone padrão
    }
  }
}

class _TechnologyCard extends StatelessWidget {
  final String name;
  final IconData icon;
  final Color color;

  const _TechnologyCard({
    required this.name,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 16),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: color, size: 32),
              const SizedBox(height: 8),
              Text(
                name,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSurface,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
