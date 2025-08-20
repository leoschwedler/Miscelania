import 'package:flutter/material.dart';
import 'package:miscelania/pages/home_page.dart';
import 'package:miscelania/pages/repositories_pages.dart';
import 'package:miscelania/pages/profile_page.dart';
import 'package:miscelania/widgets/custom_bottom_navigation.dart';

class BottomNavController extends ChangeNotifier {
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  // Lista de páginas
  final List<Widget> _pages = [
    const HomePage(),
    const RepositoriesPages(),
    const ProfilePage(),
  ];

  // Getter para a página atual
  Widget get currentPage => _pages[_currentIndex];

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
}
