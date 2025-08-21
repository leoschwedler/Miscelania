import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:miscelania/controllers/theme_controller.dart';
import 'package:miscelania/dependencies/injector.dart';
import 'package:miscelania/routes/router.dart';
import 'package:miscelania/routes/app_routes.dart';
import 'package:miscelania/themes/app_themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await injector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = GetIt.instance<ThemeController>();
    return ListenableBuilder(
      listenable: themeController,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          themeMode: themeController.themeMode,
          initialRoute: AppRoutes.initialRoute,
          routes: routes,
        );
      },
    );
  }
}
