import 'package:flutter/material.dart';

import '../widgets/app_header.dart';
import '../widgets/activity_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // Header com logo e título
          const AppHeader(),

          // Lista de atividades
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                ActivityCard(
                  icon: Icons.animation,
                  title: 'Animações',
                  exerciseCount: 4,
                  description:
                      'Estudos sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
                ),
                SizedBox(height: 16),
                ActivityCard(
                  icon: Icons.visibility,
                  title: 'Leitura de Mockup',
                  exerciseCount: 2,
                  description:
                      'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
                ),
                SizedBox(height: 16),
                ActivityCard(
                  icon: Icons.explore,
                  title: 'Playground',
                  exerciseCount: 3,
                  description: 'Ambiente destinado a testes e estudos em geral',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
