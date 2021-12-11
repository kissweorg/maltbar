import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maltbar/models/me.dart';
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
      final response = await client.post("", data: {"id": 1});
      final String accessToken = response.data['accessToken'];
      print(accessToken);
      String body = accessToken.split(".")[1];
      if (body.length % 4 != 0) {
        body += '=' * (4 - body.length % 4);
      }
      final jsonMe = jsonDecode(String.fromCharCodes(base64.decode(body)));
      final id = int.parse(jsonMe['sub']);
      final nickname = jsonMe['nick'];
      final me = Me(id: id, nickname: nickname, token: accessToken);
      print(me.toJson());

      state = AuthState.authenticated(me);
    } catch (e) {
      print(e);
      state = AuthState.unauthenticated();
    }
  }
}
