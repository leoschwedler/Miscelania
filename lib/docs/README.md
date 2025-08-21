# Models Package

Este pacote contém todos os models de dados da aplicação, organizados de forma estruturada e com sufixo `_model` para facilitar a identificação.

## Estrutura dos Models

### 1. TaskModel

Representa uma tarefa ou atividade.

```dart
final task = TaskModel(
  title: 'Minha Tarefa',
  id: 1,
  description: 'Descrição da tarefa'
);
```

### 2. TechnologyModel

Representa uma tecnologia com nome, ícone e cor.

```dart
final tech = TechnologyModel(
  name: 'Flutter',
  iconName: 'flutter_dash',
  colorHex: '#055AA3'
);
```

### 3. SkillModel

Representa uma habilidade com nome e nível de progresso.

```dart
final skill = SkillModel(
  name: 'Dart/Flutter',
  progress: 0.9,
  description: 'Desenvolvimento mobile'
);
```

### 4. ActivityModel

Representa uma atividade/exercício com título, descrição e contador.

```dart
final activity = ActivityModel(
  title: 'Flutter Masterclass',
  description: 'Aprenda Flutter do zero',
  exerciseCount: 15,
  iconName: 'school'
);
```

### 5. ProfileModel

Representa informações do perfil do usuário.

```dart
final profile = ProfileModel(
  name: 'Nome do Usuário',
  bio: 'Biografia do usuário',
  profileImagePath: 'assets/images/profile.jpeg'
);
```

### 6. SocialMediaModel

Representa redes sociais com nome, ícone e URL.

```dart
final social = SocialMediaModel(
  name: 'GitHub',
  iconName: 'code',
  url: 'https://github.com'
);
```

### 7. ThemeModel

Representa configurações de tema.

```dart
final theme = ThemeModel.dark(); // Tema escuro
final lightTheme = ThemeModel.light(); // Tema claro
```

### 8. NavigationModel

Representa itens de navegação.

```dart
final navItem = NavigationItemModel.home(); // Item de início
```

## Dados de Exemplo

Use a classe `SampleData` para obter dados de exemplo:

```dart
import 'package:miscelania/models/sample_data.dart';

// Obter tecnologias de exemplo
final technologies = SampleData.sampleTechnologies;

// Obter habilidades de exemplo
final skills = SampleData.sampleSkills;

// Obter atividades de exemplo
final activities = SampleData.sampleActivities;
```

## Factory Constructors

Todos os models possuem factory constructors para criar instâncias padrão:

```dart
// Criar tecnologia padrão
final defaultTech = TechnologyModel.defaultTech();

// Criar perfil padrão
final defaultProfile = ProfileModel.defaultProfile();

// Criar tema escuro
final darkTheme = ThemeModel.dark();
```

## Importação Simplificada

Para importar todos os models de uma vez:

```dart
import 'package:miscelania/models/models.dart';
```

Ou importar apenas um model específico:

```dart
import 'package:miscelania/models/task_model.dart';
```

## Uso nos Controllers

Os controllers agora usam os models para gerenciar dados:

```dart
class TaskController extends ChangeNotifier {
  List<TaskModel> _tasks = [];

  void addTask(TaskModel task) {
    _tasks.add(task);
    notifyListeners();
  }
}
```

## Uso nos Widgets

Os widgets podem receber models como parâmetros:

```dart
class ProfileCard extends StatelessWidget {
  final ProfileModel? profile;

  const ProfileCard({super.key, this.profile});

  @override
  Widget build(BuildContext context) {
    final profileData = profile ?? ProfileModel.defaultProfile();
    // ... resto do código
  }
}
```

## Benefícios da Refatoração

1. **Organização**: Todos os models estão centralizados no pacote `models`
2. **Consistência**: Sufixo `_model` para fácil identificação
3. **Reutilização**: Models podem ser usados em diferentes partes da aplicação
4. **Manutenibilidade**: Mudanças nos models afetam toda a aplicação de forma consistente
5. **Testabilidade**: Models isolados são mais fáceis de testar
6. **Escalabilidade**: Estrutura preparada para crescimento futuro
