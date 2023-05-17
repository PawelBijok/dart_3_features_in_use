sealed class Failure {
  final String? exception;
  final StackTrace? stackTrace;

  Failure([this.exception, this.stackTrace]);
}

class NoInternetFailure extends Failure {
  NoInternetFailure([super.exception, super.stackTrace]);
}

class NotFoundFailure extends Failure {
  NotFoundFailure([super.exception, super.stackTrace]);
}

class UnexpectedFailure extends Failure {
  UnexpectedFailure([super.exception, super.stackTrace]);
}
