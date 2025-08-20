import 'package:flutter/material.dart';
import 'package:miscelania/pages/main_navigation_page.dart';
import 'package:miscelania/pages/new_task_page.dart';
import 'package:miscelania/pages/splash_page.dart';
import 'package:miscelania/routes/app_routes.dart';

final Map<String, WidgetBuilder> routes = {
  AppRoutes.initialRoute: (context) => const SplashPage(),
  AppRoutes.homePage: (context) => const MainNavigationPage(),
  AppRoutes.repositoriesPage: (context) => const MainNavigationPage(),
  AppRoutes.profilePage: (context) => const MainNavigationPage(),
  AppRoutes.newTaskPage: (context) => const NewTaskPage(),
};
