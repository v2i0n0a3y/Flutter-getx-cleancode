

class AppExceptions implements Exception {
  final String? _message;
  final String? _prefix;

  AppExceptions([this._message, this._prefix]);

  @override
  String toString() {
    return '$_prefix: $_message';
  }
}

class InternetExceptions extends AppExceptions {
  InternetExceptions([String? message])
      : super(message, 'NO INTERNET CONNECTION');
}

class RequestTimeOut extends AppExceptions {
  RequestTimeOut([String? message])
      : super(message, 'REQUEST TIMEOUT');
}

class ServerExceptions extends AppExceptions {
  ServerExceptions([String? message])
      : super(message, 'INTERNAL SERVER EXCEPTIONS');
}

class InvalidUrlException extends AppExceptions {
  InvalidUrlException([String? message])
      : super(message, 'INVALID URL');
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message])
      : super(message, 'INVALID URL');
}