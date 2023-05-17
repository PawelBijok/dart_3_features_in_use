import '../models/todo_model.dart';

abstract interface class TodoApi {
  Future<List<TodoModel>> getAllTodo();
}

class TodoApiImpl implements TodoApi {
  @override
  Future<List<TodoModel>> getAllTodo() async {
    await Future.delayed(Duration(seconds: 2));
    return jsonTodos.map((e) => TodoModel.fromJson(e)).toList();
  }
}

const jsonTodos = [
  {
    "id": "1",
    "title": "Shopping",
    "isDone": false,
  },
  {
    "id": "2",
    "title": "Write mail to Adam",
    "isDone": true,
  }
];
