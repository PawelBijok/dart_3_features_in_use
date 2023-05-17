import '../../domain/entities/todo_entity.dart';

base class TodoModel extends TodoEntity {
  TodoModel(super.id, super.title, super.isDone);

  factory TodoModel.fromJson(Map<String, dynamic> json) {
    return TodoModel(json['id'], json['title'], json['isDone']);
  }
}
