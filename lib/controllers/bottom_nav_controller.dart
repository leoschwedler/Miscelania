import 'package:flutter/material.dart';
import 'package:miscelania/pages/home_page.dart';
import 'package:miscelania/pages/repositories_pages.dart';
import 'package:miscelania/pages/profile_page.dart';
import 'package:miscelania/widgets/custom_bottom_navigation.dart';
import 'package:miscelania/models/navigation_model.dart';

class BottomNavController extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  // Lista de páginas
  final List<Widget> _pages = [
    const HomePage(),
    const RepositoriesPages(),
    const ProfilePage(),
  ];

  // Lista de itens de navegação
  final List<NavigationItemModel> _navigationItems =
      NavigationItemModel.allItems;

  // Getter para a página atual
  Widget get currentPage => _pages[_currentIndex];

  // Getter para o item de navegação atual
  NavigationItemModel get currentNavigationItem =>
      _navigationItems[_currentIndex];

  // Getter para todos os itens de navegação
  List<NavigationItemModel> get navigationItems => _navigationItems;

  // Getter para o bottom navigation bar
  Widget get bottomNavigationBar => CustomBottomNavigation(
    currentIndex: _currentIndex,
    onTabTapped: setIndex,
  );

  void setIndex(int index) {
    if (_currentIndex != index) {
      _currentIndex = index;
      notifyListeners();
    }
  }

  // Método para navegar para uma página específica
  void navigateToPage(int index) {
    setIndex(index);
  }

  // Método para obter o item de navegação por índice
  NavigationItemModel getNavigationItem(int index) {
    return _navigationItems[index];
  }
}
