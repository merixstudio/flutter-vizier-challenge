part of 'authentication_cubit.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const AuthenticationState._();
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.loading() = _Loading;
  const factory AuthenticationState.authenticated() = _Authenticated;
  const factory AuthenticationState.unauthenticated() = _Unauthenticated;
  const factory AuthenticationState.error(Error error) = _Error;
  const factory AuthenticationState.logout() = _Logout;

  bool get isLoading => this is _Loading;

  bool get isLogged => maybeWhen(
        authenticated: () => true,
        orElse: () => false,
      );
}
