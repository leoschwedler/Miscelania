import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header da página
            const Text(
              'Sobre o Dev',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 16),

            // Conteúdo da página
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 64, color: Colors.grey[400]),
                    const SizedBox(height: 16),
                    Text(
                      'Página de Perfil',
                      style: TextStyle(fontSize: 18, color: Colors.grey[400]),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Conteúdo em desenvolvimento',
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
