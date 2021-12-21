import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kakao_flutter_sdk/all.dart';
import 'package:kisswe/main.dart';
import 'package:kisswe/models/me.dart';
import 'package:kisswe/provider/auth/auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final Reader read;
  final Dio _authClient = Dio(BaseOptions(
    // baseUrl: "http://localhost:8080/api/v1/auth",
    baseUrl: "http://192.168.35.113:8080/api/v1/auth",
    connectTimeout: 10000,
    receiveTimeout: 10000,
  ))
    ..interceptors.addAll([
      LogInterceptor(responseBody: true),
      CookieManager(cookieJar!),
    ]);

  AuthNotifier({required this.read}) : super(AuthState.unauthenticated()) {
    KakaoContext.clientId = '66e1a2ba1debe8a2f753f8a4767660a5';
  }

  Future<void> loginWithKakao() async {
    state = AuthState.fetching();
    try {
      final installed = await isKakaoTalkInstalled();
      final authCode = installed
          ? await AuthCodeClient.instance.requestWithTalk()
          : await AuthCodeClient.instance.request();
      var response = await _authClient.post("/kakao", data: {
        "authCode": authCode,
      });
      state = AuthState.authenticated(Me.fromJson(response.data));
    } catch (e) {
      print(e);
      state = AuthState.unauthenticated();
    }
  }

  Future<void> refreshToken() async {
    state = AuthState.fetching();
    try {
      final response = await _authClient.get("/refresh");
      state = AuthState.authenticated(Me.fromJson(response.data));
    } catch (e) {
      state = AuthState.unauthenticated();
    }
  }

  Future<void> signOut() async {
    state = AuthState.fetching();
    try {
      await _authClient.post(
        "/sign-out",
      );
      state = AuthState.unauthenticated();
    } catch (e) {
      state = AuthState.unauthenticated();
    }
  }
}
