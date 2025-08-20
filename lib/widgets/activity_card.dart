import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final int exerciseCount;
  final String description;

  const ActivityCard({
    super.key,
    required this.icon,
    required this.title,
    required this.exerciseCount,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.cardTheme.color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color:
              theme.cardTheme.shape is RoundedRectangleBorder
                  ? (theme.cardTheme.shape as RoundedRectangleBorder).side.color
                  : theme.colorScheme.outline.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Cabeçalho do card
          Row(
            children: [
              // Ícone circular azul
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Icon(icon, color: theme.colorScheme.onPrimary, size: 24),
              ),

              const SizedBox(width: 16),

              // Título e contador de exercícios
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: theme.textTheme.headlineMedium),
                    Text(
                      'Exercícios: $exerciseCount',
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Descrição
          Text(
            description,
            style: theme.textTheme.bodyLarge?.copyWith(height: 1.4),
          ),

          const SizedBox(height: 16),

          // Botões de ação
          Row(
            children: [
              // Link do GitHub
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.code,
                        color: theme.colorScheme.onSurface,
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Acessar código fonte',
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),

              // Botão "Ver mais"
              ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Ver mais',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
