import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kisswe/models/me.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unauthenticated() = _AuthStateUnauthenticated;
  const factory AuthState.fetching() = _AuthStateFetching;
  const factory AuthState.authenticated(String token) = _AuthStateAuthenticated;
  const factory AuthState.profileFetched(String token, Me me) =
      _AuthStateProfileFetched;
}
