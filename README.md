# Dart 3 features in use showcase

### Using:
- sealed classes instead of freezed union [example: failure](lib/domain/failutes/failure.dart), [example: cubit state](lib/presentation/home/cubit/home_state.dart)
- patterns instead of freezed map method [example: display different widgets for state (line 30)](lib/presentation/home/home_page.dart)
- records instead of dartz either class [example: implementations](lib/domain/repositories/todo_repository.dart), [example: usage](lib/presentation/home/cubit/home_cubit.dart)
- abstract interface [example: repo](lib/domain/repositories/todo_repository.dart) [example: service](lib/data/api/todo_api.dart)

