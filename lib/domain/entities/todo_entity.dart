base class TodoEntity {
  TodoEntity(this.id, this.title, this.isDone);

  final String id;
  final String title;
  final bool isDone;

  String toString() {
    return 'id: $id, title: $title, isDone: $isDone';
  }
}
