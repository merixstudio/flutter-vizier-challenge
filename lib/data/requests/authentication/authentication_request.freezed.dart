// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticationRequest _$AuthenticationRequestFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationRequest.fromJson(json);
}

/// @nodoc
class _$AuthenticationRequestTearOff {
  const _$AuthenticationRequestTearOff();

  _AuthenticationRequest call(
      {required String email, required String password}) {
    return _AuthenticationRequest(
      email: email,
      password: password,
    );
  }

  AuthenticationRequest fromJson(Map<String, Object?> json) {
    return AuthenticationRequest.fromJson(json);
  }
}

/// @nodoc
const $AuthenticationRequest = _$AuthenticationRequestTearOff();

/// @nodoc
mixin _$AuthenticationRequest {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationRequestCopyWith<AuthenticationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationRequestCopyWith<$Res> {
  factory $AuthenticationRequestCopyWith(AuthenticationRequest value,
          $Res Function(AuthenticationRequest) then) =
      _$AuthenticationRequestCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$AuthenticationRequestCopyWithImpl<$Res>
    implements $AuthenticationRequestCopyWith<$Res> {
  _$AuthenticationRequestCopyWithImpl(this._value, this._then);

  final AuthenticationRequest _value;
  // ignore: unused_field
  final $Res Function(AuthenticationRequest) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthenticationRequestCopyWith<$Res>
    implements $AuthenticationRequestCopyWith<$Res> {
  factory _$AuthenticationRequestCopyWith(_AuthenticationRequest value,
          $Res Function(_AuthenticationRequest) then) =
      __$AuthenticationRequestCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$AuthenticationRequestCopyWithImpl<$Res>
    extends _$AuthenticationRequestCopyWithImpl<$Res>
    implements _$AuthenticationRequestCopyWith<$Res> {
  __$AuthenticationRequestCopyWithImpl(_AuthenticationRequest _value,
      $Res Function(_AuthenticationRequest) _then)
      : super(_value, (v) => _then(v as _AuthenticationRequest));

  @override
  _AuthenticationRequest get _value => super._value as _AuthenticationRequest;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_AuthenticationRequest(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticationRequest implements _AuthenticationRequest {
  const _$_AuthenticationRequest({required this.email, required this.password});

  factory _$_AuthenticationRequest.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticationRequestFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationRequest(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthenticationRequest &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$AuthenticationRequestCopyWith<_AuthenticationRequest> get copyWith =>
      __$AuthenticationRequestCopyWithImpl<_AuthenticationRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticationRequestToJson(this);
  }
}

abstract class _AuthenticationRequest implements AuthenticationRequest {
  const factory _AuthenticationRequest(
      {required String email,
      required String password}) = _$_AuthenticationRequest;

  factory _AuthenticationRequest.fromJson(Map<String, dynamic> json) =
      _$_AuthenticationRequest.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$AuthenticationRequestCopyWith<_AuthenticationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
