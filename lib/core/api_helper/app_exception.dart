class AppException implements Exception {
  AppException([this._message, this._prefix]);
  final dynamic _message;
  final dynamic _prefix;

  @override
  String toString() {
    return '$_prefix$_message';
  }
}

class FetchDataException extends AppException {
  FetchDataException([dynamic message]) : super(message, '');
}

class BadRequestException extends AppException {
  BadRequestException([dynamic message]) : super(message, 'Geçersiz İstek: ');
}

class UnauthorisedException extends AppException {
  UnauthorisedException([dynamic message]) : super(message, 'Yetkisiz: ');
}

class InvalidInputException extends AppException {
  InvalidInputException([dynamic message]) : super(message, 'Geçersiz Giriş: ');
}

class TimeOutException extends AppException {
  TimeOutException([dynamic message]) : super(message, 'Timeout: ');
}

class CustomLocationServiceDisabledException extends AppException {
  CustomLocationServiceDisabledException([dynamic message])
      : super(message, 'Location services are disabled. Please enable the services.');
}

class CustomLocationPermissionDeniedException extends AppException {
  CustomLocationPermissionDeniedException([dynamic message]) : super(message, 'Location permissions are denied.');
}

class CustomLocationPermissionDeniedForeverException extends AppException {
  CustomLocationPermissionDeniedForeverException([dynamic message])
      : super(message, 'Location permissions are permanently denied, we cannot request permissions.');
}
