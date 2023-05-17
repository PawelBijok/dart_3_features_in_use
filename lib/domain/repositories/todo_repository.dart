import 'dart:io';

import '../../data/api/todo_api.dart';
import '../entities/todo_entity.dart';
import '../failutes/failure.dart';

abstract interface class TodoRepository {
  Future<(Failure?, List<TodoEntity>?)> getAllTodo();
}

class TodoRepositoryImpl implements TodoRepository {
  @override
  Future<(Failure?, List<TodoEntity>?)> getAllTodo() async {
    try {
      final service = TodoApiImpl();
      final todos = await service.getAllTodo();
      return (null, todos);
    } on SocketException catch (e, st) {
      return (NoInternetFailure(e.toString(), st), null);
    } catch (e, st) {
      return (UnexpectedFailure(e.toString(), st), null);
    }
  }
}
