import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

extension LogInterceptorExtension on Dio {
  void addLogInterceptor() {
    if (kDebugMode) {
      interceptors.add(
        LogInterceptor(
          requestHeader: false,
          responseBody: true,
        ),
      );
    }
  }
}
