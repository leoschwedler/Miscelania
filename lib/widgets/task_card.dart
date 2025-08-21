import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:miscelania/controllers/task_controller.dart';
import 'package:miscelania/models/task_model.dart';

class TaskCard extends StatelessWidget {
  final TaskModel taskModel;
  const TaskCard({super.key, required this.taskModel});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final controller = GetIt.instance<TaskController>();

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
                child: Icon(
                  Icons.task,
                  color: theme.colorScheme.onPrimary,
                  size: 24,
                ),
              ),

              const SizedBox(width: 16),

              // Título e contador de exercícios
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      taskModel.title,
                      style: theme.textTheme.headlineMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),

          // Descrição
          Text(
            taskModel.description,
            style: theme.textTheme.bodyLarge?.copyWith(height: 1.4),
          ),

          const SizedBox(height: 16),

          // Botões de ação
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  controller.removeTask(taskModel);
                },
                child: const Text(
                  'Remover',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              Spacer(),

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
