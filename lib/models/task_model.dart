import 'dart:convert';

import 'package:uuid/uuid.dart';

class TaskModel {
  final String id;
  final String title;
  final String description;

  TaskModel({String? id, required this.title, required this.description})
    : id = id ?? const Uuid().v4();

  Map<String, dynamic> toMap() {
    return {"title": title, "description": description};
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(title: map['title'], description: map['description']);
  }

  String toJson() => json.encode(toMap());

  factory TaskModel.fromJson(String source) =>
      TaskModel.fromMap(json.decode(source));
}
