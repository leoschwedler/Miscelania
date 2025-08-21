import 'package:flutter/material.dart';
import 'package:miscelania/models/task_model.dart';
import 'package:miscelania/widgets/task_card.dart';

class TaskList extends StatelessWidget {
  final List<TaskModel> tasks;
  final EdgeInsets? padding;
  final double spacing;
  final ScrollPhysics? physics;
  final bool shrinkWrap;
  final ScrollController? controller;

  const TaskList({
    super.key,
    required this.tasks,
    this.padding,
    this.spacing = 16.0,
    this.physics,
    this.shrinkWrap = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    if (tasks.isEmpty) {
      return _buildEmptyState(context);
    }

    return ListView.separated(
      padding: padding ?? const EdgeInsets.all(16),
      physics: physics,
      shrinkWrap: shrinkWrap,
      controller: controller,
      itemCount: tasks.length,
      separatorBuilder: (context, index) => SizedBox(height: spacing),
      itemBuilder: (context, index) {
        final task = tasks[index];
        return TaskCard(taskModel: task);
      },
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.task_alt_outlined,
            size: 64,
            color: theme.colorScheme.outline.withOpacity(0.5),
          ),
          const SizedBox(height: 16),
          Text(
            'Nenhuma atividade encontrada',
            style: theme.textTheme.headlineSmall?.copyWith(
              color: theme.colorScheme.outline.withOpacity(0.7),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Adicione novas tarefas para começar',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.outline.withOpacity(0.5),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
