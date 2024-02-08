import 'package:hrms/src/utils/app_snackbar.dart';

class ApiException implements Exception {
  String message;
  ApiException(this.message) {
    AppSnackbar.showSuccessSnackbar(title: 'Error', message: message);
  }
}

class UnauthorizedException extends ApiException {
  UnauthorizedException(super.message);
}

class NetworkException extends ApiException {
  NetworkException(super.message);
}
