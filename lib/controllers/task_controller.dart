import 'package:flutter/material.dart';
import 'package:miscelania/models/task_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TaskController extends ChangeNotifier {
  final SharedPreferences sharedPreferences;
  static const String tasksKey = 'tasks_key';

  List<TaskModel> _tasks = [];

  TaskController({required this.sharedPreferences}) {
    loadTasks();
  }
  List<TaskModel> get tasks => _tasks;

  void addTask(TaskModel task) {
    _tasks.add(task);
    saveTask();
    notifyListeners();
  }

  void removeTask(TaskModel task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void saveTask() {
    List<String> taskJson = _tasks.map((task) => task.toJson()).toList();
    sharedPreferences.setStringList(tasksKey, taskJson);
  }

  void loadTasks() {
    List<String>? taskJson = sharedPreferences.getStringList(tasksKey);
    if (taskJson != null) {
      _tasks = taskJson.map((json) => TaskModel.fromJson(json)).toList();
    }
  }
}
