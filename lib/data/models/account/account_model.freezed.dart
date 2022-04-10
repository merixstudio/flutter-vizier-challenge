// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountModel _$AccountModelFromJson(Map<String, dynamic> json) {
  return _AccountModel.fromJson(json);
}

/// @nodoc
class _$AccountModelTearOff {
  const _$AccountModelTearOff();

  _AccountModel call(
      {required String logo,
      required String name,
      required String number,
      required double balance,
      required double change,
      required String expiry}) {
    return _AccountModel(
      logo: logo,
      name: name,
      number: number,
      balance: balance,
      change: change,
      expiry: expiry,
    );
  }

  AccountModel fromJson(Map<String, Object?> json) {
    return AccountModel.fromJson(json);
  }
}

/// @nodoc
const $AccountModel = _$AccountModelTearOff();

/// @nodoc
mixin _$AccountModel {
  String get logo => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get number => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  double get change => throw _privateConstructorUsedError;
  String get expiry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountModelCopyWith<AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountModelCopyWith<$Res> {
  factory $AccountModelCopyWith(
          AccountModel value, $Res Function(AccountModel) then) =
      _$AccountModelCopyWithImpl<$Res>;
  $Res call(
      {String logo,
      String name,
      String number,
      double balance,
      double change,
      String expiry});
}

/// @nodoc
class _$AccountModelCopyWithImpl<$Res> implements $AccountModelCopyWith<$Res> {
  _$AccountModelCopyWithImpl(this._value, this._then);

  final AccountModel _value;
  // ignore: unused_field
  final $Res Function(AccountModel) _then;

  @override
  $Res call({
    Object? logo = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? balance = freezed,
    Object? change = freezed,
    Object? expiry = freezed,
  }) {
    return _then(_value.copyWith(
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      change: change == freezed
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      expiry: expiry == freezed
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AccountModelCopyWith<$Res>
    implements $AccountModelCopyWith<$Res> {
  factory _$AccountModelCopyWith(
          _AccountModel value, $Res Function(_AccountModel) then) =
      __$AccountModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String logo,
      String name,
      String number,
      double balance,
      double change,
      String expiry});
}

/// @nodoc
class __$AccountModelCopyWithImpl<$Res> extends _$AccountModelCopyWithImpl<$Res>
    implements _$AccountModelCopyWith<$Res> {
  __$AccountModelCopyWithImpl(
      _AccountModel _value, $Res Function(_AccountModel) _then)
      : super(_value, (v) => _then(v as _AccountModel));

  @override
  _AccountModel get _value => super._value as _AccountModel;

  @override
  $Res call({
    Object? logo = freezed,
    Object? name = freezed,
    Object? number = freezed,
    Object? balance = freezed,
    Object? change = freezed,
    Object? expiry = freezed,
  }) {
    return _then(_AccountModel(
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      change: change == freezed
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      expiry: expiry == freezed
          ? _value.expiry
          : expiry // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountModel extends _AccountModel {
  const _$_AccountModel(
      {required this.logo,
      required this.name,
      required this.number,
      required this.balance,
      required this.change,
      required this.expiry})
      : super._();

  factory _$_AccountModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccountModelFromJson(json);

  @override
  final String logo;
  @override
  final String name;
  @override
  final String number;
  @override
  final double balance;
  @override
  final double change;
  @override
  final String expiry;

  @override
  String toString() {
    return 'AccountModel(logo: $logo, name: $name, number: $number, balance: $balance, change: $change, expiry: $expiry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountModel &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other.change, change) &&
            const DeepCollectionEquality().equals(other.expiry, expiry));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(change),
      const DeepCollectionEquality().hash(expiry));

  @JsonKey(ignore: true)
  @override
  _$AccountModelCopyWith<_AccountModel> get copyWith =>
      __$AccountModelCopyWithImpl<_AccountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountModelToJson(this);
  }
}

abstract class _AccountModel extends AccountModel {
  const factory _AccountModel(
      {required String logo,
      required String name,
      required String number,
      required double balance,
      required double change,
      required String expiry}) = _$_AccountModel;
  const _AccountModel._() : super._();

  factory _AccountModel.fromJson(Map<String, dynamic> json) =
      _$_AccountModel.fromJson;

  @override
  String get logo;
  @override
  String get name;
  @override
  String get number;
  @override
  double get balance;
  @override
  double get change;
  @override
  String get expiry;
  @override
  @JsonKey(ignore: true)
  _$AccountModelCopyWith<_AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
