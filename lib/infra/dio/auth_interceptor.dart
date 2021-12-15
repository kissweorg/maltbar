import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kisswe/provider/providers.dart';

class AuthInterceptor extends QueuedInterceptor {
  final Dio dio;
  final Reader read;

  AuthInterceptor({required this.read, required this.dio});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    read(authProvider).maybeWhen(
        authenticated: (me) =>
            options.headers["Authorization"] = "Bearer ${me.accessToken}",
        orElse: () {});
    return super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      print("Session has expired trying refresh token...");
      read(authProvider.notifier).refreshToken().then(
          (value) => read(authProvider).maybeWhen(authenticated: (me) async {
                print("Session has been restored re-trying with new token...");
                err.requestOptions.headers["Authorization"] = me.accessToken;
                final options = new Options(
                    method: err.requestOptions.method,
                    headers: err.requestOptions.headers);
                final cloneReq = await dio.request(err.requestOptions.path,
                    options: options,
                    data: err.requestOptions.data,
                    queryParameters: err.requestOptions.queryParameters);
                return handler.resolve(cloneReq);
              }, orElse: () {
                print("Failed to restore session...");
                return super.onError(err, handler);
              }));
    }
  }
}
