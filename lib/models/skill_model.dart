class SkillModel {
  final String name;
  final double progress;
  final String? description;

  const SkillModel({
    required this.name,
    required this.progress,
    this.description,
  });

  // Factory constructor para criar uma habilidade padrão
  factory SkillModel.defaultSkill() {
    return const SkillModel(
      name: 'Dart/Flutter',
      progress: 0.9,
      description: 'Desenvolvimento mobile com Flutter',
    );
  }

  // Getter para verificar se a habilidade está em nível avançado
  bool get isAdvanced => progress >= 0.8;

  // Getter para verificar se a habilidade está em nível intermediário
  bool get isIntermediate => progress >= 0.5 && progress < 0.8;

  // Getter para verificar se a habilidade está em nível básico
  bool get isBasic => progress < 0.5;
}
