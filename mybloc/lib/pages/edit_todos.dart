// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mybloc/cubit/todo_cubit.dart';

class EditTodo extends StatefulWidget {
  const EditTodo({Key? key, this.todo})
      : super(
          key: key,
        );
  final todo;

  @override
  State<EditTodo> createState() => _EditTodoState();
}

class _EditTodoState extends State<EditTodo> {
  late TextEditingController _titleController;
  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.todo ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                  controller: _titleController,
                  decoration: const InputDecoration(
                    labelText: 'Enter title',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                  )),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    context
                        .read<TodoCubit>()
                        .editTodo(widget.todo, _titleController.text.trim());
                    Navigator.of(context).pop();
                  },
                  child: Text('edit data'))
            ],
          ),
        ),
      ),
    );
  }
}
