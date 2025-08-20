import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Habilidades e Competências',
          style: theme.textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 16),

        Column(
          children: [
            _SkillItem(skillName: 'Dart/Flutter', progress: 0.9),
            const SizedBox(height: 12),
            _SkillItem(skillName: 'React', progress: 0.7),
            const SizedBox(height: 12),
            _SkillItem(skillName: 'Javascript', progress: 0.8),
            const SizedBox(height: 12),
            _SkillItem(skillName: 'HTML', progress: 0.95),
            const SizedBox(height: 12),
            _SkillItem(skillName: 'CSS', progress: 0.85),
          ],
        ),
      ],
    );
  }
}

class _SkillItem extends StatelessWidget {
  final String skillName;
  final double progress;

  const _SkillItem({required this.skillName, required this.progress});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      children: [
        // Nome da habilidade
        Expanded(
          flex: 2,
          child: Text(
            skillName,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        const SizedBox(width: 16),

        // Barra de progresso
        Expanded(
          flex: 3,
          child: LinearProgressIndicator(
            value: progress,
            backgroundColor: colorScheme.surface,
            valueColor: AlwaysStoppedAnimation<Color>(colorScheme.primary),
            borderRadius: BorderRadius.circular(4),
            minHeight: 8,
          ),
        ),
      ],
    );
  }
}
