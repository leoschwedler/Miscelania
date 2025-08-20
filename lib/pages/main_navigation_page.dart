import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:miscelania/controllers/bottom_nav_controller.dart';

class MainNavigationPage extends StatelessWidget {
  const MainNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavController = GetIt.instance<BottomNavController>();

    return ListenableBuilder(
      listenable: bottomNavController,
      builder: (context, child) {
        return Scaffold(
          body: bottomNavController.currentPage,
          bottomNavigationBar: bottomNavController.bottomNavigationBar,
        );
      },
    );
  }
}
