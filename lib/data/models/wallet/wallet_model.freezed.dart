// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletModel _$WalletModelFromJson(Map<String, dynamic> json) {
  return _WalletModel.fromJson(json);
}

/// @nodoc
class _$WalletModelTearOff {
  const _$WalletModelTearOff();

  _WalletModel call(
      {required double balance,
      required double goal,
      required List<AccountModel> accounts,
      required DateTime date}) {
    return _WalletModel(
      balance: balance,
      goal: goal,
      accounts: accounts,
      date: date,
    );
  }

  WalletModel fromJson(Map<String, Object?> json) {
    return WalletModel.fromJson(json);
  }
}

/// @nodoc
const $WalletModel = _$WalletModelTearOff();

/// @nodoc
mixin _$WalletModel {
  double get balance => throw _privateConstructorUsedError;
  double get goal => throw _privateConstructorUsedError;
  List<AccountModel> get accounts => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletModelCopyWith<WalletModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletModelCopyWith<$Res> {
  factory $WalletModelCopyWith(
          WalletModel value, $Res Function(WalletModel) then) =
      _$WalletModelCopyWithImpl<$Res>;
  $Res call(
      {double balance,
      double goal,
      List<AccountModel> accounts,
      DateTime date});
}

/// @nodoc
class _$WalletModelCopyWithImpl<$Res> implements $WalletModelCopyWith<$Res> {
  _$WalletModelCopyWithImpl(this._value, this._then);

  final WalletModel _value;
  // ignore: unused_field
  final $Res Function(WalletModel) _then;

  @override
  $Res call({
    Object? balance = freezed,
    Object? goal = freezed,
    Object? accounts = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      goal: goal == freezed
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as double,
      accounts: accounts == freezed
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AccountModel>,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$WalletModelCopyWith<$Res>
    implements $WalletModelCopyWith<$Res> {
  factory _$WalletModelCopyWith(
          _WalletModel value, $Res Function(_WalletModel) then) =
      __$WalletModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double balance,
      double goal,
      List<AccountModel> accounts,
      DateTime date});
}

/// @nodoc
class __$WalletModelCopyWithImpl<$Res> extends _$WalletModelCopyWithImpl<$Res>
    implements _$WalletModelCopyWith<$Res> {
  __$WalletModelCopyWithImpl(
      _WalletModel _value, $Res Function(_WalletModel) _then)
      : super(_value, (v) => _then(v as _WalletModel));

  @override
  _WalletModel get _value => super._value as _WalletModel;

  @override
  $Res call({
    Object? balance = freezed,
    Object? goal = freezed,
    Object? accounts = freezed,
    Object? date = freezed,
  }) {
    return _then(_WalletModel(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      goal: goal == freezed
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as double,
      accounts: accounts == freezed
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<AccountModel>,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletModel extends _WalletModel {
  const _$_WalletModel(
      {required this.balance,
      required this.goal,
      required this.accounts,
      required this.date})
      : super._();

  factory _$_WalletModel.fromJson(Map<String, dynamic> json) =>
      _$$_WalletModelFromJson(json);

  @override
  final double balance;
  @override
  final double goal;
  @override
  final List<AccountModel> accounts;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'WalletModel(balance: $balance, goal: $goal, accounts: $accounts, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalletModel &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other.goal, goal) &&
            const DeepCollectionEquality().equals(other.accounts, accounts) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(goal),
      const DeepCollectionEquality().hash(accounts),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$WalletModelCopyWith<_WalletModel> get copyWith =>
      __$WalletModelCopyWithImpl<_WalletModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletModelToJson(this);
  }
}

abstract class _WalletModel extends WalletModel {
  const factory _WalletModel(
      {required double balance,
      required double goal,
      required List<AccountModel> accounts,
      required DateTime date}) = _$_WalletModel;
  const _WalletModel._() : super._();

  factory _WalletModel.fromJson(Map<String, dynamic> json) =
      _$_WalletModel.fromJson;

  @override
  double get balance;
  @override
  double get goal;
  @override
  List<AccountModel> get accounts;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$WalletModelCopyWith<_WalletModel> get copyWith =>
      throw _privateConstructorUsedError;
}
