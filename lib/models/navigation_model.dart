import 'package:flutter/material.dart';

class NavigationItemModel {
  final String title;
  final IconData icon;
  final String route;
  final int index;

  const NavigationItemModel({
    required this.title,
    required this.icon,
    required this.route,
    required this.index,
  });

  // Factory constructor para criar itens de navegação padrão
  factory NavigationItemModel.home() {
    return const NavigationItemModel(
      title: 'Atividades',
      icon: Icons.track_changes,
      route: '/home',
      index: 0,
    );
  }

  factory NavigationItemModel.repositories() {
    return const NavigationItemModel(
      title: 'Repositórios',
      icon: Icons.folder,
      route: '/repositories',
      index: 1,
    );
  }

  factory NavigationItemModel.profile() {
    return const NavigationItemModel(
      title: 'Perfil',
      icon: Icons.person,
      route: '/profile',
      index: 2,
    );
  }

  // Lista estática de todos os itens de navegação
  static List<NavigationItemModel> get allItems => [
    NavigationItemModel.home(),
    NavigationItemModel.repositories(),
    NavigationItemModel.profile(),
  ];
}
