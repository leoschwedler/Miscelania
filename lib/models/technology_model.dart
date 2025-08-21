class TechnologyModel {
  final String name;
  final String iconName;
  final String colorHex;

  const TechnologyModel({
    required this.name,
    required this.iconName,
    required this.colorHex,
  });

  // Factory constructor para criar uma tecnologia padrão
  factory TechnologyModel.defaultTech() {
    return const TechnologyModel(
      name: 'Flutter',
      iconName: 'flutter_dash',
      colorHex: '#055AA3',
    );
  }

  // Método para converter hex para Color (será usado nos widgets)
  int get colorValue => int.parse(colorHex.replaceAll('#', '0xFF'));
}
