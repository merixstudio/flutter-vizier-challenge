// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'financial_history_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FinancialHistoryDataModel _$FinancialHistoryDataModelFromJson(
    Map<String, dynamic> json) {
  return _FinancialHistoryDataModel.fromJson(json);
}

/// @nodoc
class _$FinancialHistoryDataModelTearOff {
  const _$FinancialHistoryDataModelTearOff();

  _FinancialHistoryDataModel call(
      {required DateTime date,
      required double balance,
      required double spent}) {
    return _FinancialHistoryDataModel(
      date: date,
      balance: balance,
      spent: spent,
    );
  }

  FinancialHistoryDataModel fromJson(Map<String, Object?> json) {
    return FinancialHistoryDataModel.fromJson(json);
  }
}

/// @nodoc
const $FinancialHistoryDataModel = _$FinancialHistoryDataModelTearOff();

/// @nodoc
mixin _$FinancialHistoryDataModel {
  DateTime get date => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  double get spent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinancialHistoryDataModelCopyWith<FinancialHistoryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancialHistoryDataModelCopyWith<$Res> {
  factory $FinancialHistoryDataModelCopyWith(FinancialHistoryDataModel value,
          $Res Function(FinancialHistoryDataModel) then) =
      _$FinancialHistoryDataModelCopyWithImpl<$Res>;
  $Res call({DateTime date, double balance, double spent});
}

/// @nodoc
class _$FinancialHistoryDataModelCopyWithImpl<$Res>
    implements $FinancialHistoryDataModelCopyWith<$Res> {
  _$FinancialHistoryDataModelCopyWithImpl(this._value, this._then);

  final FinancialHistoryDataModel _value;
  // ignore: unused_field
  final $Res Function(FinancialHistoryDataModel) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? balance = freezed,
    Object? spent = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      spent: spent == freezed
          ? _value.spent
          : spent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$FinancialHistoryDataModelCopyWith<$Res>
    implements $FinancialHistoryDataModelCopyWith<$Res> {
  factory _$FinancialHistoryDataModelCopyWith(_FinancialHistoryDataModel value,
          $Res Function(_FinancialHistoryDataModel) then) =
      __$FinancialHistoryDataModelCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, double balance, double spent});
}

/// @nodoc
class __$FinancialHistoryDataModelCopyWithImpl<$Res>
    extends _$FinancialHistoryDataModelCopyWithImpl<$Res>
    implements _$FinancialHistoryDataModelCopyWith<$Res> {
  __$FinancialHistoryDataModelCopyWithImpl(_FinancialHistoryDataModel _value,
      $Res Function(_FinancialHistoryDataModel) _then)
      : super(_value, (v) => _then(v as _FinancialHistoryDataModel));

  @override
  _FinancialHistoryDataModel get _value =>
      super._value as _FinancialHistoryDataModel;

  @override
  $Res call({
    Object? date = freezed,
    Object? balance = freezed,
    Object? spent = freezed,
  }) {
    return _then(_FinancialHistoryDataModel(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      spent: spent == freezed
          ? _value.spent
          : spent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FinancialHistoryDataModel extends _FinancialHistoryDataModel {
  const _$_FinancialHistoryDataModel(
      {required this.date, required this.balance, required this.spent})
      : super._();

  factory _$_FinancialHistoryDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_FinancialHistoryDataModelFromJson(json);

  @override
  final DateTime date;
  @override
  final double balance;
  @override
  final double spent;

  @override
  String toString() {
    return 'FinancialHistoryDataModel(date: $date, balance: $balance, spent: $spent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FinancialHistoryDataModel &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other.spent, spent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(spent));

  @JsonKey(ignore: true)
  @override
  _$FinancialHistoryDataModelCopyWith<_FinancialHistoryDataModel>
      get copyWith =>
          __$FinancialHistoryDataModelCopyWithImpl<_FinancialHistoryDataModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FinancialHistoryDataModelToJson(this);
  }
}

abstract class _FinancialHistoryDataModel extends FinancialHistoryDataModel {
  const factory _FinancialHistoryDataModel(
      {required DateTime date,
      required double balance,
      required double spent}) = _$_FinancialHistoryDataModel;
  const _FinancialHistoryDataModel._() : super._();

  factory _FinancialHistoryDataModel.fromJson(Map<String, dynamic> json) =
      _$_FinancialHistoryDataModel.fromJson;

  @override
  DateTime get date;
  @override
  double get balance;
  @override
  double get spent;
  @override
  @JsonKey(ignore: true)
  _$FinancialHistoryDataModelCopyWith<_FinancialHistoryDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
