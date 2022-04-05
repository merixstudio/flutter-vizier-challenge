part of 'user_cubit.dart';

@freezed
class UserState with _$UserState {
  const UserState._();
  const factory UserState.initial() = _Initial;
  const factory UserState.loading() = _Loading;
  const factory UserState.loaded(UserModel userModel) = _Loaded;
  const factory UserState.upating(UserModel userModel) = _Updating;
  const factory UserState.errorWithData({
    required UserModel userModel,
    required AppError appError,
  }) = _LoadedWithData;
  const factory UserState.error(AppError appError) = _Error;

  UserModel? get user => maybeMap(
        loaded: (state) => state.userModel,
        upating: (state) => state.userModel,
        errorWithData: (state) => state.userModel,
        orElse: () => null,
      );
}
