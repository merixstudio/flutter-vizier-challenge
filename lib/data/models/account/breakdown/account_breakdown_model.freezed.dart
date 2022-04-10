// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_breakdown_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountBreakdownModel _$AccountBreakdownModelFromJson(
    Map<String, dynamic> json) {
  return _AccountBreakdownModel.fromJson(json);
}

/// @nodoc
class _$AccountBreakdownModelTearOff {
  const _$AccountBreakdownModelTearOff();

  _AccountBreakdownModel call(
      {required DateTime from,
      required DateTime to,
      required List<TransactionCategoryModel> transactionCategories,
      required AccountModel account}) {
    return _AccountBreakdownModel(
      from: from,
      to: to,
      transactionCategories: transactionCategories,
      account: account,
    );
  }

  AccountBreakdownModel fromJson(Map<String, Object?> json) {
    return AccountBreakdownModel.fromJson(json);
  }
}

/// @nodoc
const $AccountBreakdownModel = _$AccountBreakdownModelTearOff();

/// @nodoc
mixin _$AccountBreakdownModel {
  DateTime get from => throw _privateConstructorUsedError;
  DateTime get to => throw _privateConstructorUsedError;
  List<TransactionCategoryModel> get transactionCategories =>
      throw _privateConstructorUsedError;
  AccountModel get account => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountBreakdownModelCopyWith<AccountBreakdownModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountBreakdownModelCopyWith<$Res> {
  factory $AccountBreakdownModelCopyWith(AccountBreakdownModel value,
          $Res Function(AccountBreakdownModel) then) =
      _$AccountBreakdownModelCopyWithImpl<$Res>;
  $Res call(
      {DateTime from,
      DateTime to,
      List<TransactionCategoryModel> transactionCategories,
      AccountModel account});

  $AccountModelCopyWith<$Res> get account;
}

/// @nodoc
class _$AccountBreakdownModelCopyWithImpl<$Res>
    implements $AccountBreakdownModelCopyWith<$Res> {
  _$AccountBreakdownModelCopyWithImpl(this._value, this._then);

  final AccountBreakdownModel _value;
  // ignore: unused_field
  final $Res Function(AccountBreakdownModel) _then;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? transactionCategories = freezed,
    Object? account = freezed,
  }) {
    return _then(_value.copyWith(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transactionCategories: transactionCategories == freezed
          ? _value.transactionCategories
          : transactionCategories // ignore: cast_nullable_to_non_nullable
              as List<TransactionCategoryModel>,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel,
    ));
  }

  @override
  $AccountModelCopyWith<$Res> get account {
    return $AccountModelCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value));
    });
  }
}

/// @nodoc
abstract class _$AccountBreakdownModelCopyWith<$Res>
    implements $AccountBreakdownModelCopyWith<$Res> {
  factory _$AccountBreakdownModelCopyWith(_AccountBreakdownModel value,
          $Res Function(_AccountBreakdownModel) then) =
      __$AccountBreakdownModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime from,
      DateTime to,
      List<TransactionCategoryModel> transactionCategories,
      AccountModel account});

  @override
  $AccountModelCopyWith<$Res> get account;
}

/// @nodoc
class __$AccountBreakdownModelCopyWithImpl<$Res>
    extends _$AccountBreakdownModelCopyWithImpl<$Res>
    implements _$AccountBreakdownModelCopyWith<$Res> {
  __$AccountBreakdownModelCopyWithImpl(_AccountBreakdownModel _value,
      $Res Function(_AccountBreakdownModel) _then)
      : super(_value, (v) => _then(v as _AccountBreakdownModel));

  @override
  _AccountBreakdownModel get _value => super._value as _AccountBreakdownModel;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? transactionCategories = freezed,
    Object? account = freezed,
  }) {
    return _then(_AccountBreakdownModel(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
      transactionCategories: transactionCategories == freezed
          ? _value.transactionCategories
          : transactionCategories // ignore: cast_nullable_to_non_nullable
              as List<TransactionCategoryModel>,
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as AccountModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountBreakdownModel extends _AccountBreakdownModel {
  const _$_AccountBreakdownModel(
      {required this.from,
      required this.to,
      required this.transactionCategories,
      required this.account})
      : super._();

  factory _$_AccountBreakdownModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccountBreakdownModelFromJson(json);

  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final List<TransactionCategoryModel> transactionCategories;
  @override
  final AccountModel account;

  @override
  String toString() {
    return 'AccountBreakdownModel(from: $from, to: $to, transactionCategories: $transactionCategories, account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountBreakdownModel &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality()
                .equals(other.transactionCategories, transactionCategories) &&
            const DeepCollectionEquality().equals(other.account, account));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(transactionCategories),
      const DeepCollectionEquality().hash(account));

  @JsonKey(ignore: true)
  @override
  _$AccountBreakdownModelCopyWith<_AccountBreakdownModel> get copyWith =>
      __$AccountBreakdownModelCopyWithImpl<_AccountBreakdownModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountBreakdownModelToJson(this);
  }
}

abstract class _AccountBreakdownModel extends AccountBreakdownModel {
  const factory _AccountBreakdownModel(
      {required DateTime from,
      required DateTime to,
      required List<TransactionCategoryModel> transactionCategories,
      required AccountModel account}) = _$_AccountBreakdownModel;
  const _AccountBreakdownModel._() : super._();

  factory _AccountBreakdownModel.fromJson(Map<String, dynamic> json) =
      _$_AccountBreakdownModel.fromJson;

  @override
  DateTime get from;
  @override
  DateTime get to;
  @override
  List<TransactionCategoryModel> get transactionCategories;
  @override
  AccountModel get account;
  @override
  @JsonKey(ignore: true)
  _$AccountBreakdownModelCopyWith<_AccountBreakdownModel> get copyWith =>
      throw _privateConstructorUsedError;
}
