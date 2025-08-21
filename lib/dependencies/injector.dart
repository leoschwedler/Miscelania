import 'package:get_it/get_it.dart';
import 'package:miscelania/controllers/bottom_nav_controller.dart';
import 'package:miscelania/controllers/task_controller.dart';
import 'package:miscelania/controllers/theme_controller.dart';

final getIt = GetIt.instance;

void injector() {
  getIt.registerSingleton<ThemeController>(ThemeController());
  getIt.registerSingleton<BottomNavController>(BottomNavController());
  getIt.registerSingleton<TaskController>(TaskController());
}
