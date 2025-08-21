import 'package:flutter/material.dart';
import 'package:miscelania/models/skill_model.dart';
import 'package:miscelania/mock/sample_data.dart';

class SkillsSection extends StatelessWidget {
  final List<SkillModel>? skills;

  const SkillsSection({super.key, this.skills});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final screenWidth = MediaQuery.of(context).size.width;

    // Breakpoints responsivos mais granulares
    final isVerySmallScreen = screenWidth < 400;
    final isSmallScreen = screenWidth < 600;
    final isMediumScreen = screenWidth < 900;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Habilidades e Competências',
          style: (isVerySmallScreen
                  ? theme.textTheme.titleLarge
                  : theme.textTheme.headlineMedium)
              ?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
        ),
        SizedBox(height: isVerySmallScreen ? 12 : 16),

        Column(
          children: [
            ...(skills ?? SampleData.sampleSkills)
                .map(
                  (skill) => Column(
                    children: [
                      _SkillItem(
                        skillName: skill.name,
                        progress: skill.progress,
                        isVerySmallScreen: isVerySmallScreen,
                        isSmallScreen: isSmallScreen,
                        isMediumScreen: isMediumScreen,
                      ),
                      SizedBox(height: isVerySmallScreen ? 8 : 12),
                    ],
                  ),
                )
                .toList(),
          ],
        ),
      ],
    );
  }
}

class _SkillItem extends StatelessWidget {
  final String skillName;
  final double progress;
  final bool isVerySmallScreen;
  final bool isSmallScreen;
  final bool isMediumScreen;

  const _SkillItem({
    required this.skillName,
    required this.progress,
    required this.isVerySmallScreen,
    required this.isSmallScreen,
    required this.isMediumScreen,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Layout responsivo baseado no tamanho da tela
    if (isVerySmallScreen) {
      // Layout vertical para telas muito pequenas (mobile)
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Nome da habilidade
          Text(
            skillName,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          const SizedBox(height: 6),

          // Barra de progresso
          SizedBox(
            width: double.infinity,
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: colorScheme.surface,
              valueColor: AlwaysStoppedAnimation<Color>(colorScheme.primary),
              borderRadius: BorderRadius.circular(4),
              minHeight: 6,
            ),
          ),
        ],
      );
    } else if (isSmallScreen) {
      // Layout vertical para telas pequenas (tablet pequeno)
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Nome da habilidade
          Text(
            skillName,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w500,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          const SizedBox(height: 8),

          // Barra de progresso
          SizedBox(
            width: double.infinity,
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
    } else {
      // Layout horizontal para telas maiores (tablet grande e desktop)
      return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Nome da habilidade
          Expanded(
            flex: isMediumScreen ? 3 : 2,
            child: Text(
              skillName,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),

          SizedBox(width: isMediumScreen ? 12 : 16),

          // Barra de progresso
          Expanded(
            flex: isMediumScreen ? 4 : 3,
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
}
