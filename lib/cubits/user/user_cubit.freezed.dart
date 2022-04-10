// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(UserModel userModel) {
    return _Loaded(
      userModel,
    );
  }

  _Updating upating(UserModel userModel) {
    return _Updating(
      userModel,
    );
  }

  _LoadedWithData errorWithData(
      {required UserModel userModel, required AppError appError}) {
    return _LoadedWithData(
      userModel: userModel,
      appError: appError,
    );
  }

  _Error error(AppError appError) {
    return _Error(
      appError,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel userModel) loaded,
    required TResult Function(UserModel userModel) upating,
    required TResult Function(UserModel userModel, AppError appError)
        errorWithData,
    required TResult Function(AppError appError) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? loaded,
    TResult Function(UserModel userModel)? upating,
    TResult Function(UserModel userModel, AppError appError)? errorWithData,
    TResult Function(AppError appError)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? loaded,
    TResult Function(UserModel userModel)? upating,
    TResult Function(UserModel userModel, AppError appError)? errorWithData,
    TResult Function(AppError appError)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Updating value) upating,
    required TResult Function(_LoadedWithData value) errorWithData,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Updating value)? upating,
    TResult Function(_LoadedWithData value)? errorWithData,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Updating value)? upating,
    TResult Function(_LoadedWithData value)? errorWithData,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel userModel) loaded,
    required TResult Function(UserModel userModel) upating,
    required TResult Function(UserModel userModel, AppError appError)
        errorWithData,
    required TResult Function(AppError appError) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? loaded,
    TResult Function(UserModel userModel)? upating,
    TResult Function(UserModel userModel, AppError appError)? errorWithData,
    TResult Function(AppError appError)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? loaded,
    TResult Function(UserModel userModel)? upating,
    TResult Function(UserModel userModel, AppError appError)? errorWithData,
    TResult Function(AppError appError)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Updating value) upating,
    required TResult Function(_LoadedWithData value) errorWithData,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Updating value)? upating,
    TResult Function(_LoadedWithData value)? errorWithData,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Updating value)? upating,
    TResult Function(_LoadedWithData value)? errorWithData,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends UserState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel userModel) loaded,
    required TResult Function(UserModel userModel) upating,
    required TResult Function(UserModel userModel, AppError appError)
        errorWithData,
    required TResult Function(AppError appError) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? loaded,
    TResult Function(UserModel userModel)? upating,
    TResult Function(UserModel userModel, AppError appError)? errorWithData,
    TResult Function(AppError appError)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? loaded,
    TResult Function(UserModel userModel)? upating,
    TResult Function(UserModel userModel, AppError appError)? errorWithData,
    TResult Function(AppError appError)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Updating value) upating,
    required TResult Function(_LoadedWithData value) errorWithData,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Updating value)? upating,
    TResult Function(_LoadedWithData value)? errorWithData,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Updating value)? upating,
    TResult Function(_LoadedWithData value)? errorWithData,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends UserState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({UserModel userModel});

  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? userModel = freezed,
  }) {
    return _then(_Loaded(
      userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get userModel {
    return $UserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }
}

/// @nodoc

class _$_Loaded extends _Loaded {
  const _$_Loaded(this.userModel) : super._();

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'UserState.loaded(userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.userModel, userModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userModel));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel userModel) loaded,
    required TResult Function(UserModel userModel) upating,
    required TResult Function(UserModel userModel, AppError appError)
        errorWithData,
    required TResult Function(AppError appError) error,
  }) {
    return loaded(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? loaded,
    TResult Function(UserModel userModel)? upating,
    TResult Function(UserModel userModel, AppError appError)? errorWithData,
    TResult Function(AppError appError)? error,
  }) {
    return loaded?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? loaded,
    TResult Function(UserModel userModel)? upating,
    TResult Function(UserModel userModel, AppError appError)? errorWithData,
    TResult Function(AppError appError)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Updating value) upating,
    required TResult Function(_LoadedWithData value) errorWithData,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Updating value)? upating,
    TResult Function(_LoadedWithData value)? errorWithData,
    TResult Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Updating value)? upating,
    TResult Function(_LoadedWithData value)? errorWithData,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends UserState {
  const factory _Loaded(UserModel userModel) = _$_Loaded;
  const _Loaded._() : super._();

  UserModel get userModel;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdatingCopyWith<$Res> {
  factory _$UpdatingCopyWith(_Updating value, $Res Function(_Updating) then) =
      __$UpdatingCopyWithImpl<$Res>;
  $Res call({UserModel userModel});

  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$UpdatingCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$UpdatingCopyWith<$Res> {
  __$UpdatingCopyWithImpl(_Updating _value, $Res Function(_Updating) _then)
      : super(_value, (v) => _then(v as _Updating));

  @override
  _Updating get _value => super._value as _Updating;

  @override
  $Res call({
    Object? userModel = freezed,
  }) {
    return _then(_Updating(
      userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get userModel {
    return $UserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }
}

/// @nodoc

class _$_Updating extends _Updating {
  const _$_Updating(this.userModel) : super._();

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'UserState.upating(userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Updating &&
            const DeepCollectionEquality().equals(other.userModel, userModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userModel));

  @JsonKey(ignore: true)
  @override
  _$UpdatingCopyWith<_Updating> get copyWith =>
      __$UpdatingCopyWithImpl<_Updating>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel userModel) loaded,
    required TResult Function(UserModel userModel) upating,
    required TResult Function(UserModel userModel, AppError appError)
        errorWithData,
    required TResult Function(AppError appError) error,
  }) {
    return upating(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? loaded,
    TResult Function(UserModel userModel)? upating,
    TResult Function(UserModel userModel, AppError appError)? errorWithData,
    TResult Function(AppError appError)? error,
  }) {
    return upating?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? loaded,
    TResult Function(UserModel userModel)? upating,
    TResult Function(UserModel userModel, AppError appError)? errorWithData,
    TResult Function(AppError appError)? error,
    required TResult orElse(),
  }) {
    if (upating != null) {
      return upating(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Updating value) upating,
    required TResult Function(_LoadedWithData value) errorWithData,
    required TResult Function(_Error value) error,
  }) {
    return upating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Updating value)? upating,
    TResult Function(_LoadedWithData value)? errorWithData,
    TResult Function(_Error value)? error,
  }) {
    return upating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Updating value)? upating,
    TResult Function(_LoadedWithData value)? errorWithData,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (upating != null) {
      return upating(this);
    }
    return orElse();
  }
}

abstract class _Updating extends UserState {
  const factory _Updating(UserModel userModel) = _$_Updating;
  const _Updating._() : super._();

  UserModel get userModel;
  @JsonKey(ignore: true)
  _$UpdatingCopyWith<_Updating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedWithDataCopyWith<$Res> {
  factory _$LoadedWithDataCopyWith(
          _LoadedWithData value, $Res Function(_LoadedWithData) then) =
      __$LoadedWithDataCopyWithImpl<$Res>;
  $Res call({UserModel userModel, AppError appError});

  $UserModelCopyWith<$Res> get userModel;
  $AppErrorCopyWith<$Res> get appError;
}

/// @nodoc
class __$LoadedWithDataCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$LoadedWithDataCopyWith<$Res> {
  __$LoadedWithDataCopyWithImpl(
      _LoadedWithData _value, $Res Function(_LoadedWithData) _then)
      : super(_value, (v) => _then(v as _LoadedWithData));

  @override
  _LoadedWithData get _value => super._value as _LoadedWithData;

  @override
  $Res call({
    Object? userModel = freezed,
    Object? appError = freezed,
  }) {
    return _then(_LoadedWithData(
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
      appError: appError == freezed
          ? _value.appError
          : appError // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }

  @override
  $UserModelCopyWith<$Res> get userModel {
    return $UserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }

  @override
  $AppErrorCopyWith<$Res> get appError {
    return $AppErrorCopyWith<$Res>(_value.appError, (value) {
      return _then(_value.copyWith(appError: value));
    });
  }
}

/// @nodoc

class _$_LoadedWithData extends _LoadedWithData {
  const _$_LoadedWithData({required this.userModel, required this.appError})
      : super._();

  @override
  final UserModel userModel;
  @override
  final AppError appError;

  @override
  String toString() {
    return 'UserState.errorWithData(userModel: $userModel, appError: $appError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadedWithData &&
            const DeepCollectionEquality().equals(other.userModel, userModel) &&
            const DeepCollectionEquality().equals(other.appError, appError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userModel),
      const DeepCollectionEquality().hash(appError));

  @JsonKey(ignore: true)
  @override
  _$LoadedWithDataCopyWith<_LoadedWithData> get copyWith =>
      __$LoadedWithDataCopyWithImpl<_LoadedWithData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel userModel) loaded,
    required TResult Function(UserModel userModel) upating,
    required TResult Function(UserModel userModel, AppError appError)
        errorWithData,
    required TResult Function(AppError appError) error,
  }) {
    return errorWithData(userModel, appError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? loaded,
    TResult Function(UserModel userModel)? upating,
    TResult Function(UserModel userModel, AppError appError)? errorWithData,
    TResult Function(AppError appError)? error,
  }) {
    return errorWithData?.call(userModel, appError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? loaded,
    TResult Function(UserModel userModel)? upating,
    TResult Function(UserModel userModel, AppError appError)? errorWithData,
    TResult Function(AppError appError)? error,
    required TResult orElse(),
  }) {
    if (errorWithData != null) {
      return errorWithData(userModel, appError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Updating value) upating,
    required TResult Function(_LoadedWithData value) errorWithData,
    required TResult Function(_Error value) error,
  }) {
    return errorWithData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Updating value)? upating,
    TResult Function(_LoadedWithData value)? errorWithData,
    TResult Function(_Error value)? error,
  }) {
    return errorWithData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Updating value)? upating,
    TResult Function(_LoadedWithData value)? errorWithData,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (errorWithData != null) {
      return errorWithData(this);
    }
    return orElse();
  }
}

abstract class _LoadedWithData extends UserState {
  const factory _LoadedWithData(
      {required UserModel userModel,
      required AppError appError}) = _$_LoadedWithData;
  const _LoadedWithData._() : super._();

  UserModel get userModel;
  AppError get appError;
  @JsonKey(ignore: true)
  _$LoadedWithDataCopyWith<_LoadedWithData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({AppError appError});

  $AppErrorCopyWith<$Res> get appError;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? appError = freezed,
  }) {
    return _then(_Error(
      appError == freezed
          ? _value.appError
          : appError // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }

  @override
  $AppErrorCopyWith<$Res> get appError {
    return $AppErrorCopyWith<$Res>(_value.appError, (value) {
      return _then(_value.copyWith(appError: value));
    });
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error(this.appError) : super._();

  @override
  final AppError appError;

  @override
  String toString() {
    return 'UserState.error(appError: $appError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.appError, appError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(appError));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel userModel) loaded,
    required TResult Function(UserModel userModel) upating,
    required TResult Function(UserModel userModel, AppError appError)
        errorWithData,
    required TResult Function(AppError appError) error,
  }) {
    return error(appError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? loaded,
    TResult Function(UserModel userModel)? upating,
    TResult Function(UserModel userModel, AppError appError)? errorWithData,
    TResult Function(AppError appError)? error,
  }) {
    return error?.call(appError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? loaded,
    TResult Function(UserModel userModel)? upating,
    TResult Function(UserModel userModel, AppError appError)? errorWithData,
    TResult Function(AppError appError)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(appError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Updating value) upating,
    required TResult Function(_LoadedWithData value) errorWithData,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Updating value)? upating,
    TResult Function(_LoadedWithData value)? errorWithData,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Updating value)? upating,
    TResult Function(_LoadedWithData value)? errorWithData,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends UserState {
  const factory _Error(AppError appError) = _$_Error;
  const _Error._() : super._();

  AppError get appError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
