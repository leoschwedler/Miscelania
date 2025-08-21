class SocialMediaModel {
  final String name;
  final String iconName;
  final String url;
  final String? username;

  const SocialMediaModel({
    required this.name,
    required this.iconName,
    required this.url,
    this.username,
  });

  // Factory constructor para criar redes sociais padrão
  factory SocialMediaModel.github() {
    return const SocialMediaModel(
      name: 'GitHub',
      iconName: 'code',
      url: 'https://github.com',
      username: 'leonardoschwedler',
    );
  }

  factory SocialMediaModel.linkedin() {
    return const SocialMediaModel(
      name: 'LinkedIn',
      iconName: 'work',
      url: 'https://linkedin.com',
      username: 'leonardoschwedler',
    );
  }

  factory SocialMediaModel.twitter() {
    return const SocialMediaModel(
      name: 'Twitter',
      iconName: 'flutter_dash',
      url: 'https://twitter.com',
      username: 'leonardoschwedler',
    );
  }

  // Getter para verificar se a URL é válida
  bool get isValidUrl => url.isNotEmpty && url.startsWith('http');

  // Getter para obter o nome de usuário ou URL como fallback
  String get displayName => username ?? url;
}
