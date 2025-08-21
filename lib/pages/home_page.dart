import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:miscelania/controllers/task_controller.dart';
import 'package:miscelania/models/task_model.dart';
import 'package:miscelania/routes/app_routes.dart';
import 'package:miscelania/widgets/widgets.dart';

import '../widgets/app_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = GetIt.instance<TaskController>();
    List<TaskModel> tasks = [
      TaskModel(
        title: "Compilador de C++",
        id: 1,
        description: "Desenvolver um compilador completo para a linguagem C++",
      ),
      TaskModel(
        title: "Sistema de Banco de Dados",
        id: 2,
        description:
            "Criar um sistema de gerenciamento de banco de dados relacional",
      ),
      TaskModel(
        title: "Aplicativo Mobile",
        id: 3,
        description: "Desenvolver um app mobile multiplataforma com Flutter",
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Header com logo e título
            const AppHeader(),

            // Lista de atividades
            Expanded(child: TaskList(tasks: tasks)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(AppRoutes.newTaskPage);
        },
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        elevation: 8,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, size: 28),
      ),
    );
  }
}
