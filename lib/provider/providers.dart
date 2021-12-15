import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kisswe/infra/dio/auth_interceptor.dart';
import 'package:kisswe/main.dart';
import 'package:kisswe/provider/auth/auth_notifier.dart';
import 'package:kisswe/provider/auth/auth_state.dart';
import 'package:kisswe/provider/post/post_notifier.dart';
import 'package:kisswe/provider/post/post_state.dart';

import 'bottom_navigation/bottom_navigation_notifier.dart';
import 'bottom_navigation/bottom_navigation_state.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(read: ref.read);
});

final apiClientProvider = Provider<Dio>((ref) {
  final dio = Dio(BaseOptions(
    baseUrl: "http://localhost:8080/api",
    connectTimeout: 10000,
    receiveTimeout: 10000,
  ));
  dio.interceptors.addAll([
    AuthInterceptor(dio: dio, read: ref.read),
    LogInterceptor(responseBody: true),
    CookieManager(cookieJar!),
  ]);
  return dio;
});

final postProvider = StateNotifierProvider<PostNotifier, PostState>(
  (ref) => PostNotifier(
    read: ref.read,
    state: PostState.fetching(),
  ),
);

final bottomNavigationProvider =
    StateNotifierProvider<BottomNavigationNotifier, BottomNavigationState>(
  (ref) => BottomNavigationNotifier(
    read: ref.read,
    state: BottomNavigationState.switched(BottomNavigation.posts),
  ),
);
