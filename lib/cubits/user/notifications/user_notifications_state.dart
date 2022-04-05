part of 'user_notifications_cubit.dart';

@freezed
class UserNotificationsState with _$UserNotificationsState {
  const UserNotificationsState._();

  const factory UserNotificationsState.initial() = _Initial;
  const factory UserNotificationsState.loading() = _Loading;
  const factory UserNotificationsState.loaded({
    required bool areNotificationsEnabled,
  }) = _Loaded;
  const factory UserNotificationsState.failure({
    required AppError appError,
  }) = _Failure;

  bool? get areNotificationsEnabled => maybeMap(
        loaded: (state) => state.areNotificationsEnabled,
        orElse: () => null,
      );

  bool get isLoading => maybeMap(
        loading: (_) => true,
        orElse: () => false,
      );
}
