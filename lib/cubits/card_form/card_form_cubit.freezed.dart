// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CardFormStateTearOff {
  const _$CardFormStateTearOff();

  _CardFormState call(
      {required String billing,
      required String cvv,
      required String expiry,
      required String name,
      required String number,
      required CardAccountType type}) {
    return _CardFormState(
      billing: billing,
      cvv: cvv,
      expiry: expiry,
      name: name,
      number: number,
      type: type,
    );
  }
}

/// @nodoc
const $CardFormState = _$CardFormStateTearOff();

/// @nodoc
mixin _$CardFormState {
  String get billing => throw _privateConstructorUsedError;
  String get cvv => throw _privateConstructorUsedError;
  String get expiry => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  CardAccountType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardFormStateCopyWith<CardFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardFormStateCopyWith<$Res> {
  factory $CardFormStateCopyWith(
          CardFormState value, $Res Function(CardFormState) then) =
      _$CardFormStateCopyWithImpl<$Res>;
  $Res call(
      {String billing,
      String cvv,
      String expiry,
      String name,
      String number,
      CardAccountType type});
}

/// @nodoc
class _$CardFormStateCopyWithImpl<$Res>
    implements $CardFormStateCopyWith<$Res> {
  _$CardFormStateCopyWithImpl(this._value, this._then);

  final CardFormState _value;
  // ignore: unused_field
  final $Res Function(CardFormState) _then;

  @override
  $Res call({
    Object? billing = freezed,
    Object? cvv = freezed,
    Object? expiry = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      billing: billing == freezed
          ? _value.billing
          : billing // ignore: cast_nullable_to_non_nullable
              as String,
      cvv: cvv == freezed
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      expiry: expiry == freezed
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CardAccountType,
    ));
  }
}

/// @nodoc
abstract class _$CardFormStateCopyWith<$Res>
    implements $CardFormStateCopyWith<$Res> {
  factory _$CardFormStateCopyWith(
          _CardFormState value, $Res Function(_CardFormState) then) =
      __$CardFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String billing,
      String cvv,
      String expiry,
      String name,
      String number,
      CardAccountType type});
}

/// @nodoc
class __$CardFormStateCopyWithImpl<$Res>
    extends _$CardFormStateCopyWithImpl<$Res>
    implements _$CardFormStateCopyWith<$Res> {
  __$CardFormStateCopyWithImpl(
      _CardFormState _value, $Res Function(_CardFormState) _then)
      : super(_value, (v) => _then(v as _CardFormState));

  @override
  _CardFormState get _value => super._value as _CardFormState;

  @override
  $Res call({
    Object? billing = freezed,
    Object? cvv = freezed,
    Object? expiry = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? type = freezed,
  }) {
    return _then(_CardFormState(
      billing: billing == freezed
          ? _value.billing
          : billing // ignore: cast_nullable_to_non_nullable
              as String,
      cvv: cvv == freezed
          ? _value.cvv
          : cvv // ignore: cast_nullable_to_non_nullable
              as String,
      expiry: expiry == freezed
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CardAccountType,
    ));
  }
}

/// @nodoc

class _$_CardFormState extends _CardFormState {
  const _$_CardFormState(
      {required this.billing,
      required this.cvv,
      required this.expiry,
      required this.name,
      required this.number,
      required this.type})
      : super._();

  @override
  final String billing;
  @override
  final String cvv;
  @override
  final String expiry;
  @override
  final String name;
  @override
  final String number;
  @override
  final CardAccountType type;

  @override
  String toString() {
    return 'CardFormState(billing: $billing, cvv: $cvv, expiry: $expiry, name: $name, number: $number, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CardFormState &&
            const DeepCollectionEquality().equals(other.billing, billing) &&
            const DeepCollectionEquality().equals(other.cvv, cvv) &&
            const DeepCollectionEquality().equals(other.expiry, expiry) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(billing),
      const DeepCollectionEquality().hash(cvv),
      const DeepCollectionEquality().hash(expiry),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$CardFormStateCopyWith<_CardFormState> get copyWith =>
      __$CardFormStateCopyWithImpl<_CardFormState>(this, _$identity);
}

abstract class _CardFormState extends CardFormState {
  const factory _CardFormState(
      {required String billing,
      required String cvv,
      required String expiry,
      required String name,
      required String number,
      required CardAccountType type}) = _$_CardFormState;
  const _CardFormState._() : super._();

  @override
  String get billing;
  @override
  String get cvv;
  @override
  String get expiry;
  @override
  String get name;
  @override
  String get number;
  @override
  CardAccountType get type;
  @override
  @JsonKey(ignore: true)
  _$CardFormStateCopyWith<_CardFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
