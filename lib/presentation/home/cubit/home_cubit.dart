import 'package:bloc/bloc.dart';

import '../../../../domain/entities/todo_entity.dart';
import '../../../../domain/failutes/failure.dart';
import '../../../domain/repositories/todo_repository.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(InitialHomeState());

  Future<void> init() async {
    emit(LoadingHomeState());

    final TodoRepository repo = TodoRepositoryImpl();
    var (failure, todos) = await repo.getAllTodo();
    if (failure != null) {
      return emit(ErrorHomeState(failure));
    }
    if (todos == null) {
      return emit(InitialHomeState());
    }
    emit(LoadedHomeState(todos));
  }
}
