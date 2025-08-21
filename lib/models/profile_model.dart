class ProfileModel {
  final String name;
  final String bio;
  final String profileImagePath;
  final String? location;
  final String? website;
  final List<String>? interests;

  const ProfileModel({
    required this.name,
    required this.bio,
    required this.profileImagePath,
    this.location,
    this.website,
    this.interests,
  });

  // Factory constructor para criar um perfil padrão
  factory ProfileModel.defaultProfile() {
    return const ProfileModel(
      name: 'Leonardo Schwedler',
      bio:
          'Desenvolvedor mobile atuando com Flutter e Android nativo. Apaixonado por criar experiências únicas e inovadoras através do desenvolvimento de aplicativos.',
      profileImagePath: 'assets/images/profile.jpeg',
      location: 'Brasil',
      interests: ['Mobile Development', 'Flutter', 'Android', 'UI/UX'],
    );
  }

  // Getter para verificar se o perfil tem localização
  bool get hasLocation => location != null && location!.isNotEmpty;

  // Getter para verificar se o perfil tem website
  bool get hasWebsite => website != null && website!.isNotEmpty;

  // Getter para verificar se o perfil tem interesses
  bool get hasInterests => interests != null && interests!.isNotEmpty;
}
