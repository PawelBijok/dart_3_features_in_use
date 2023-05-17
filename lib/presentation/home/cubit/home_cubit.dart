import 'package:bloc/bloc.dart';
import 'package:new_dart_arch/domain/repositories/todo_repository.dart';

import '../../../../domain/entities/todo_entity.dart';
import '../../../../domain/failutes/failure.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(InitialHomeState());

  Future<void> init() async {
    emit(LoadingHomeState());

    final TodoRepository repo = TodoRepositoryImpl();
    var (failure, todo) = await repo.getAllTodo();
    if (failure != null) {
      return emit(ErrorHomeState(failure));
    }
    if (todo == null) {
      return emit(InitialHomeState());
    }
    emit(LoadedHomeState(todo));
  }
}
