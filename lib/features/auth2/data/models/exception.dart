class UserException implements Exception {
  final int code;
  final String message;

  UserException({
    this.code = 400,
    this.message = '',
  });
}

class ServerException implements Exception {}

class CacheException implements Exception {}
