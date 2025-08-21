import 'package:miscelania/models/profile_model.dart';
import 'package:miscelania/models/skill_model.dart';
import 'package:miscelania/models/social_media_model.dart';
import 'package:miscelania/models/technology_model.dart';

/// Classe com dados de exemplo para demonstrar o uso dos models
class SampleData {
  // Dados de exemplo para tecnologias
  static List<TechnologyModel> get sampleTechnologies => [
    const TechnologyModel(
      name: 'Flutter',
      iconName: 'flutter_dash',
      colorHex: '#055AA3',
    ),
    const TechnologyModel(name: 'Dart', iconName: 'code', colorHex: '#00D4AA'),
    const TechnologyModel(name: 'React', iconName: 'code', colorHex: '#61DAFB'),
    const TechnologyModel(name: 'Java', iconName: 'code', colorHex: '#F7DF1E'),
    const TechnologyModel(name: 'HTML', iconName: 'code', colorHex: '#E34F26'),
  ];

  // Dados de exemplo para habilidades
  static List<SkillModel> get sampleSkills => [
    const SkillModel(
      name: 'Dart/Flutter',
      progress: 0.9,
      description: 'Desenvolvimento mobile com Flutter',
    ),
    const SkillModel(
      name: 'React',
      progress: 0.7,
      description: 'Desenvolvimento web com React',
    ),
    const SkillModel(
      name: 'JavaScript',
      progress: 0.8,
      description: 'Linguagem de programação web',
    ),
    const SkillModel(
      name: 'HTML',
      progress: 0.95,
      description: 'Linguagem de marcação',
    ),
    const SkillModel(
      name: 'CSS',
      progress: 0.85,
      description: 'Estilização de páginas web',
    ),
  ];

  // Dados de exemplo para redes sociais
  static List<SocialMediaModel> get sampleSocialMedia => [
    SocialMediaModel.github(),
    SocialMediaModel.linkedin(),
    SocialMediaModel.twitter(),
  ];

  // Perfil de exemplo
  static ProfileModel get sampleProfile => ProfileModel.defaultProfile();
}
