part of 'home_cubit.dart';

sealed class HomeState {}

class InitialHomeState extends HomeState {}

class LoadingHomeState extends HomeState {}

class LoadedHomeState extends HomeState {
  LoadedHomeState(this.allTodo);
  final List<TodoEntity> allTodo;
}

class ErrorHomeState extends HomeState {
  ErrorHomeState(this.failure);
  final Failure failure;
}
