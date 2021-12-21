import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kisswe/main.dart';
import 'package:kisswe/provider/auth/auth_notifier.dart';
import 'package:kisswe/provider/auth/auth_state.dart';
import 'package:kisswe/provider/post/post_notifier.dart';
import 'package:kisswe/provider/post/post_state.dart';

import 'bottom_navigation/bottom_navigation_notifier.dart';
import 'bottom_navigation/bottom_navigation_state.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
    (ref) => AuthNotifier(read: ref.read));

final apiClientProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    // baseUrl: "http://localhost:8080/api",
    baseUrl: "http://192.168.35.113:8080/api",
    connectTimeout: 10000,
    receiveTimeout: 10000,
  ));
  dio.interceptors.addAll([
    InterceptorsWrapper(
      onRequest: (options, handler) {
        ref.read(authProvider).maybeWhen(
            authenticated: (me) =>
                options.headers["Authorization"] = "Bearer ${me.accessToken}",
            orElse: () {});
        return handler.next(options);
      },
      onError: (err, handler) async {
        if (err.response?.statusCode == HttpStatus.unauthorized) {
          print("Session has expired trying refresh token...");
          dio.lock();
          try {
            await ref.read(authProvider.notifier).refreshToken();
          } catch (e) {
            return handler.next(err);
          }

          // TODO: THIS NEEDS TO BE FIXED (TIMING ISSUE)
          ref.read(authProvider).maybeWhen(
            authenticated: (me) async {
              print("Session has been restored re-trying with new token...");
              err.requestOptions.headers["Authorization"] = me.accessToken;
              final options = new Options(
                method: err.requestOptions.method,
                headers: err.requestOptions.headers,
              );
              dio.unlock();
              final cloneReq = await dio.request(
                err.requestOptions.path,
                options: options,
                data: err.requestOptions.data,
                queryParameters: err.requestOptions.queryParameters,
              );
              return handler.resolve(cloneReq);
            },
            orElse: () {
              print("Failed to restore session...");
              dio.unlock();
              return handler.next(err);
            },
          );
        }
      },
    ),
    LogInterceptor(responseBody: true),
    CookieManager(cookieJar!),
  ]);
  return dio;
});

final postProvider = StateNotifierProvider<PostNotifier, PostState>(
  (ref) => PostNotifier(
    read: ref.read,
    state: PostState.empty(),
  ),
);

final bottomNavigationProvider =
    StateNotifierProvider<BottomNavigationNotifier, BottomNavigationState>(
  (ref) => BottomNavigationNotifier(
    read: ref.read,
    state: BottomNavigationState.switched(BottomNavigation.posts),
  ),
);
