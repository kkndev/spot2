abstract class Failure {}

class UserFailure implements Failure {
  final int code;
  final String message;

  UserFailure({
    this.code = 400,
    this.message = '',
  });
}

class ServerFailure implements Failure {
  final int code;
  final String message;

  ServerFailure({
    this.code = 400,
    this.message = '',
  });
}
