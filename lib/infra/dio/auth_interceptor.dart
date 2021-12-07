import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maltbar/provider/providers.dart';

class AuthInterceptor extends Interceptor {
  final Dio dio;
  final Reader read;

  AuthInterceptor({required this.read, required this.dio});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    read(authProvider).maybeWhen(authenticated: (token) {
      options.headers["Authorization"] = "Bearer $token";
      return super.onRequest(options, handler);
    }, orElse: () {
      return super.onRequest(options, handler);
    });
  }

  @override
  Future<void> onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    if (response.statusCode == HttpStatus.unauthorized) {
      dio.lock();
      await read(authProvider.notifier).getToken();
      dio.unlock();
    }

    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    return super.onError(err, handler);
  }
}
