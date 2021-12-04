import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maltbar/infra/dio/auth_interceptor.dart';
import 'package:maltbar/provider/auth/auth_notifier.dart';
import 'package:maltbar/provider/auth/auth_state.dart';
import 'package:maltbar/provider/post/post_notifier.dart';
import 'package:maltbar/provider/post/post_state.dart';

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
    AuthInterceptor(ref.read),
    LogInterceptor(),
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
