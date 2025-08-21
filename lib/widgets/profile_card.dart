import 'package:flutter/material.dart';
import 'package:miscelania/models/profile_model.dart';

class ProfileCard extends StatelessWidget {
  final ProfileModel? profile;

  const ProfileCard({super.key, this.profile});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Usar profile fornecido ou criar um padrão
    final profileData = profile ?? ProfileModel.defaultProfile();

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // Foto do perfil
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(profileData.profileImagePath),
              backgroundColor: colorScheme.surface,
            ),
            const SizedBox(height: 16),

            // Nome
            Text(
              profileData.name,
              style: theme.textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: colorScheme.onSurface,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),

            // Bio
            Text(
              profileData.bio,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.textTheme.bodyMedium?.color,
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            // Ícones de redes sociais
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _SocialMediaButton(
                  icon: Icons.chat_bubble,
                  onPressed: () {
                    // TODO: Implementar ação do WhatsApp
                  },
                ),
                _SocialMediaButton(
                  icon: Icons.smart_toy,
                  onPressed: () {
                    // TODO: Implementar ação do Discord
                  },
                ),
                _SocialMediaButton(
                  icon: Icons.camera_alt,
                  onPressed: () {
                    // TODO: Implementar ação do Instagram
                  },
                ),
                _SocialMediaButton(
                  icon: Icons.facebook,
                  onPressed: () {
                    // TODO: Implementar ação do Facebook
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _SocialMediaButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const _SocialMediaButton({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon, color: colorScheme.onSurface, size: 24),
      style: IconButton.styleFrom(
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(12),
      ),
    );
  }
}
