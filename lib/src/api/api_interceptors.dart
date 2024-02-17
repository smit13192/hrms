import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hrms/src/storage/app_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiInterceptors {
  InterceptorsWrapper get interceptorsWrapper {
    return InterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
        options.headers['Authorization'] =
            'Bearer ${AppStorage.getToken ?? ''}';
        log('BASE URL:- ${options.baseUrl}');
        log('API:- ${options.baseUrl}${options.path}');
        log('REQUEST DATA:- ${options.data}');
        log('REQUEST HEADER:- ${options.headers}');
        return handler.next(options);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) {
        log('RESPONSE STATUS CODE:- ${response.statusCode}');
        log('RESPONSE DATA:- ${response.data}');
        return handler.next(response);
      },
      onError: (DioException e, ErrorInterceptorHandler handler) {
        return handler.next(e);
      },
    );
  }

  PrettyDioLogger get prettyDioLogger {
    return PrettyDioLogger(
      request: true,
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: true,
      logPrint: (object) {
        log(object.toString());
      },
      error: true,
      compact: true,
      maxWidth: 100,
    );
  }
}
