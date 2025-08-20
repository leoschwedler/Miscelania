import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // Foto do perfil
            CircleAvatar(
              radius: 50,
              backgroundImage: const AssetImage('assets/images/profile.jpeg'),
              backgroundColor: Colors.grey[300],
            ),
            const SizedBox(height: 16),

            // Nome
            Text(
              'Leonardo Schwedler',
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),

            // Bio
            Text(
              'Desenvolvedor mobile atuando com Flutter e Android nativo. Apaixonado por criar experiências únicas e inovadoras através do desenvolvimento de aplicativos.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Colors.grey[300],
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
    return IconButton(
      onPressed: onPressed,
      icon: Icon(icon, color: Colors.white, size: 24),
      style: IconButton.styleFrom(
        backgroundColor: Colors.transparent,
        padding: const EdgeInsets.all(12),
      ),
    );
  }
}
