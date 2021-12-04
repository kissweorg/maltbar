import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maltbar/provider/auth/auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final Reader read;
  final Dio client = Dio(BaseOptions(
    baseUrl: "http://localhost:8080/api/v1/auth",
    connectTimeout: 10000,
    receiveTimeout: 10000,
  ));

  AuthNotifier({required this.read}) : super(AuthState.unauthenticated()) {
    getToken();
  }

  // TODO: Write authentication
  Future<void> getToken() async {
    state = AuthState.fetching();
    try {
      final response = await client.post("");
      print(response.data);
      state = AuthState.authenticated(response.data["accessToken"]);
    } catch (e) {
      print(e);
      state = AuthState.unauthenticated();
    }
  }
}
