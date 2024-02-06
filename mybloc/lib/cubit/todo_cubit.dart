import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/todo.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    if (title.isEmpty) {
      addError('Title cannot be empty');
      return;
    }
    final todo = Todo(
      name: title,
      createdAt: DateTime.now(),
    );

    emit([...state, todo]);
  }

  void editTodo(String oldTitle, String newTitle) {
    if (newTitle.isEmpty) {
      addError('Title cannot be empty');
      return;
    }

    final updatedTodos = state.map((todo) {
      if (todo.name == oldTitle) {
        // Update todo dengan title yang baru
        return Todo(name: newTitle, createdAt: DateTime.now());
      } else {
        return todo;
      }
    }).toList();

    emit(updatedTodos);
  }

  void delete(String title) {
    final updatedTodos = state.where((todo) => todo.name != title).toList();
    emit(updatedTodos);
  }

  @override
  void onChange(Change<List<Todo>> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print(error);
  }
}
