import 'package:flutter/material.dart';
import 'package:miscelania/widgets/profile_header.dart';
import 'package:miscelania/widgets/profile_card.dart';
import 'package:miscelania/widgets/favorite_technologies.dart';
import 'package:miscelania/widgets/skills_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header da página
              const ProfileHeader(),
              const SizedBox(height: 24),

              // Conteúdo da página com scroll
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Card do perfil
                      const ProfileCard(),

                      // Seção de tecnologias favoritas
                      const FavoriteTechnologies(),
                      const SizedBox(height: 32),
                      // Seção de habilidades
                      const SkillsSection(),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
