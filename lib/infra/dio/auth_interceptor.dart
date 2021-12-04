import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maltbar/provider/providers.dart';

class AuthInterceptor extends Interceptor {
  final Reader read;

  AuthInterceptor(this.read);

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
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    return super.onError(err, handler);
  }
}
