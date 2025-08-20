import 'package:flutter/material.dart';

class RepositoriesPages extends StatelessWidget {
  const RepositoriesPages({super.key});

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
              'Repositórios',
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
                    Icon(Icons.folder, size: 64, color: Colors.grey[400]),
                    const SizedBox(height: 16),
                    Text(
                      'Página de Repositórios',
                      style: TextStyle(fontSize: 18, color: Colors.grey[400]),
                    ),
                    const SizedBox(height: 8),
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
