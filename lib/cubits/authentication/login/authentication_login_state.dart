part of 'authentication_login_cubit.dart';

@freezed
class AuthenticationLoginState with _$AuthenticationLoginState {
  const AuthenticationLoginState._();
  const factory AuthenticationLoginState.initial() = _Initial;
  const factory AuthenticationLoginState.loading() = _Loading;
  const factory AuthenticationLoginState.success({
    required String token,
  }) = _Success;
  const factory AuthenticationLoginState.error(AppError error) = _Error;

  bool get isLoading => maybeMap(
        loading: (_) => true,
        orElse: () => false,
      );
}
