import 'package:flutter/material.dart';
import 'package:todo_app_bloc/pages/create_todo.dart';
import 'package:todo_app_bloc/pages/search_and_filter.dart';

import 'show_todos.dart';
import 'todo_header.dart';

class TodosPage extends StatelessWidget {
  const TodosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          child: Column(
            children: [
              const TodoHeader(),
              const CreateTodo(),
              const SizedBox(height: 20),
              SearchAndFilter(),
              const ShowTodos(),
            ],
          ),
        )),
      ),
    );
  }
}
