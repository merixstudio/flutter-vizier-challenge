// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppErrorTearOff {
  const _$AppErrorTearOff();

  _MockFailure mockFailure() {
    return _MockFailure();
  }

  _NetworkError networkFailure() {
    return _NetworkError();
  }

  _ServerError serverFailure(
      {required int? statusCode, required Map<String, dynamic>? json}) {
    return _ServerError(
      statusCode: statusCode,
      json: json,
    );
  }

  _UnknownError unknownFailure(dynamic error) {
    return _UnknownError(
      error,
    );
  }
}

/// @nodoc
const $AppError = _$AppErrorTearOff();

/// @nodoc
mixin _$AppError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mockFailure,
    required TResult Function() networkFailure,
    required TResult Function(int? statusCode, Map<String, dynamic>? json)
        serverFailure,
    required TResult Function(dynamic error) unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? mockFailure,
    TResult Function()? networkFailure,
    TResult Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult Function(dynamic error)? unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mockFailure,
    TResult Function()? networkFailure,
    TResult Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult Function(dynamic error)? unknownFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MockFailure value) mockFailure,
    required TResult Function(_NetworkError value) networkFailure,
    required TResult Function(_ServerError value) serverFailure,
    required TResult Function(_UnknownError value) unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MockFailure value)? mockFailure,
    TResult Function(_NetworkError value)? networkFailure,
    TResult Function(_ServerError value)? serverFailure,
    TResult Function(_UnknownError value)? unknownFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MockFailure value)? mockFailure,
    TResult Function(_NetworkError value)? networkFailure,
    TResult Function(_ServerError value)? serverFailure,
    TResult Function(_UnknownError value)? unknownFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res> implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  final AppError _value;
  // ignore: unused_field
  final $Res Function(AppError) _then;
}

/// @nodoc
abstract class _$MockFailureCopyWith<$Res> {
  factory _$MockFailureCopyWith(
          _MockFailure value, $Res Function(_MockFailure) then) =
      __$MockFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$MockFailureCopyWithImpl<$Res> extends _$AppErrorCopyWithImpl<$Res>
    implements _$MockFailureCopyWith<$Res> {
  __$MockFailureCopyWithImpl(
      _MockFailure _value, $Res Function(_MockFailure) _then)
      : super(_value, (v) => _then(v as _MockFailure));

  @override
  _MockFailure get _value => super._value as _MockFailure;
}

/// @nodoc

class _$_MockFailure extends _MockFailure {
  _$_MockFailure() : super._();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _MockFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mockFailure,
    required TResult Function() networkFailure,
    required TResult Function(int? statusCode, Map<String, dynamic>? json)
        serverFailure,
    required TResult Function(dynamic error) unknownFailure,
  }) {
    return mockFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? mockFailure,
    TResult Function()? networkFailure,
    TResult Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult Function(dynamic error)? unknownFailure,
  }) {
    return mockFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mockFailure,
    TResult Function()? networkFailure,
    TResult Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult Function(dynamic error)? unknownFailure,
    required TResult orElse(),
  }) {
    if (mockFailure != null) {
      return mockFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MockFailure value) mockFailure,
    required TResult Function(_NetworkError value) networkFailure,
    required TResult Function(_ServerError value) serverFailure,
    required TResult Function(_UnknownError value) unknownFailure,
  }) {
    return mockFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MockFailure value)? mockFailure,
    TResult Function(_NetworkError value)? networkFailure,
    TResult Function(_ServerError value)? serverFailure,
    TResult Function(_UnknownError value)? unknownFailure,
  }) {
    return mockFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MockFailure value)? mockFailure,
    TResult Function(_NetworkError value)? networkFailure,
    TResult Function(_ServerError value)? serverFailure,
    TResult Function(_UnknownError value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (mockFailure != null) {
      return mockFailure(this);
    }
    return orElse();
  }
}

abstract class _MockFailure extends AppError {
  factory _MockFailure() = _$_MockFailure;
  _MockFailure._() : super._();
}

/// @nodoc
abstract class _$NetworkErrorCopyWith<$Res> {
  factory _$NetworkErrorCopyWith(
          _NetworkError value, $Res Function(_NetworkError) then) =
      __$NetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$NetworkErrorCopyWithImpl<$Res> extends _$AppErrorCopyWithImpl<$Res>
    implements _$NetworkErrorCopyWith<$Res> {
  __$NetworkErrorCopyWithImpl(
      _NetworkError _value, $Res Function(_NetworkError) _then)
      : super(_value, (v) => _then(v as _NetworkError));

  @override
  _NetworkError get _value => super._value as _NetworkError;
}

/// @nodoc

class _$_NetworkError extends _NetworkError {
  _$_NetworkError() : super._();

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NetworkError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mockFailure,
    required TResult Function() networkFailure,
    required TResult Function(int? statusCode, Map<String, dynamic>? json)
        serverFailure,
    required TResult Function(dynamic error) unknownFailure,
  }) {
    return networkFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? mockFailure,
    TResult Function()? networkFailure,
    TResult Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult Function(dynamic error)? unknownFailure,
  }) {
    return networkFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mockFailure,
    TResult Function()? networkFailure,
    TResult Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult Function(dynamic error)? unknownFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MockFailure value) mockFailure,
    required TResult Function(_NetworkError value) networkFailure,
    required TResult Function(_ServerError value) serverFailure,
    required TResult Function(_UnknownError value) unknownFailure,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MockFailure value)? mockFailure,
    TResult Function(_NetworkError value)? networkFailure,
    TResult Function(_ServerError value)? serverFailure,
    TResult Function(_UnknownError value)? unknownFailure,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MockFailure value)? mockFailure,
    TResult Function(_NetworkError value)? networkFailure,
    TResult Function(_ServerError value)? serverFailure,
    TResult Function(_UnknownError value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class _NetworkError extends AppError {
  factory _NetworkError() = _$_NetworkError;
  _NetworkError._() : super._();
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
  $Res call({int? statusCode, Map<String, dynamic>? json});
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$AppErrorCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;

  @override
  $Res call({
    Object? statusCode = freezed,
    Object? json = freezed,
  }) {
    return _then(_ServerError(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      json: json == freezed
          ? _value.json
          : json // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$_ServerError extends _ServerError {
  _$_ServerError({required this.statusCode, required this.json}) : super._();

  @override
  final int? statusCode;
  @override
  final Map<String, dynamic>? json;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ServerError &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode) &&
            const DeepCollectionEquality().equals(other.json, json));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusCode),
      const DeepCollectionEquality().hash(json));

  @JsonKey(ignore: true)
  @override
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mockFailure,
    required TResult Function() networkFailure,
    required TResult Function(int? statusCode, Map<String, dynamic>? json)
        serverFailure,
    required TResult Function(dynamic error) unknownFailure,
  }) {
    return serverFailure(statusCode, json);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? mockFailure,
    TResult Function()? networkFailure,
    TResult Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult Function(dynamic error)? unknownFailure,
  }) {
    return serverFailure?.call(statusCode, json);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mockFailure,
    TResult Function()? networkFailure,
    TResult Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult Function(dynamic error)? unknownFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(statusCode, json);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MockFailure value) mockFailure,
    required TResult Function(_NetworkError value) networkFailure,
    required TResult Function(_ServerError value) serverFailure,
    required TResult Function(_UnknownError value) unknownFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MockFailure value)? mockFailure,
    TResult Function(_NetworkError value)? networkFailure,
    TResult Function(_ServerError value)? serverFailure,
    TResult Function(_UnknownError value)? unknownFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MockFailure value)? mockFailure,
    TResult Function(_NetworkError value)? networkFailure,
    TResult Function(_ServerError value)? serverFailure,
    TResult Function(_UnknownError value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerError extends AppError {
  factory _ServerError(
      {required int? statusCode,
      required Map<String, dynamic>? json}) = _$_ServerError;
  _ServerError._() : super._();

  int? get statusCode;
  Map<String, dynamic>? get json;
  @JsonKey(ignore: true)
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnknownErrorCopyWith<$Res> {
  factory _$UnknownErrorCopyWith(
          _UnknownError value, $Res Function(_UnknownError) then) =
      __$UnknownErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class __$UnknownErrorCopyWithImpl<$Res> extends _$AppErrorCopyWithImpl<$Res>
    implements _$UnknownErrorCopyWith<$Res> {
  __$UnknownErrorCopyWithImpl(
      _UnknownError _value, $Res Function(_UnknownError) _then)
      : super(_value, (v) => _then(v as _UnknownError));

  @override
  _UnknownError get _value => super._value as _UnknownError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_UnknownError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_UnknownError extends _UnknownError {
  _$_UnknownError(this.error) : super._();

  @override
  final dynamic error;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnknownError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$UnknownErrorCopyWith<_UnknownError> get copyWith =>
      __$UnknownErrorCopyWithImpl<_UnknownError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() mockFailure,
    required TResult Function() networkFailure,
    required TResult Function(int? statusCode, Map<String, dynamic>? json)
        serverFailure,
    required TResult Function(dynamic error) unknownFailure,
  }) {
    return unknownFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? mockFailure,
    TResult Function()? networkFailure,
    TResult Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult Function(dynamic error)? unknownFailure,
  }) {
    return unknownFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? mockFailure,
    TResult Function()? networkFailure,
    TResult Function(int? statusCode, Map<String, dynamic>? json)?
        serverFailure,
    TResult Function(dynamic error)? unknownFailure,
    required TResult orElse(),
  }) {
    if (unknownFailure != null) {
      return unknownFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MockFailure value) mockFailure,
    required TResult Function(_NetworkError value) networkFailure,
    required TResult Function(_ServerError value) serverFailure,
    required TResult Function(_UnknownError value) unknownFailure,
  }) {
    return unknownFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_MockFailure value)? mockFailure,
    TResult Function(_NetworkError value)? networkFailure,
    TResult Function(_ServerError value)? serverFailure,
    TResult Function(_UnknownError value)? unknownFailure,
  }) {
    return unknownFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MockFailure value)? mockFailure,
    TResult Function(_NetworkError value)? networkFailure,
    TResult Function(_ServerError value)? serverFailure,
    TResult Function(_UnknownError value)? unknownFailure,
    required TResult orElse(),
  }) {
    if (unknownFailure != null) {
      return unknownFailure(this);
    }
    return orElse();
  }
}

abstract class _UnknownError extends AppError {
  factory _UnknownError(dynamic error) = _$_UnknownError;
  _UnknownError._() : super._();

  dynamic get error;
  @JsonKey(ignore: true)
  _$UnknownErrorCopyWith<_UnknownError> get copyWith =>
      throw _privateConstructorUsedError;
}
