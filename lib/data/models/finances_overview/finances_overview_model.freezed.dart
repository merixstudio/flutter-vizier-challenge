// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'finances_overview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FinancesOverviewModel _$FinancesOverviewModelFromJson(
    Map<String, dynamic> json) {
  return _FinancesOverviewModel.fromJson(json);
}

/// @nodoc
class _$FinancesOverviewModelTearOff {
  const _$FinancesOverviewModelTearOff();

  _FinancesOverviewModel call(
      {required double cashBalance,
      required double spent,
      required DateTime since}) {
    return _FinancesOverviewModel(
      cashBalance: cashBalance,
      spent: spent,
      since: since,
    );
  }

  FinancesOverviewModel fromJson(Map<String, Object?> json) {
    return FinancesOverviewModel.fromJson(json);
  }
}

/// @nodoc
const $FinancesOverviewModel = _$FinancesOverviewModelTearOff();

/// @nodoc
mixin _$FinancesOverviewModel {
  double get cashBalance => throw _privateConstructorUsedError;
  double get spent => throw _privateConstructorUsedError;
  DateTime get since => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinancesOverviewModelCopyWith<FinancesOverviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancesOverviewModelCopyWith<$Res> {
  factory $FinancesOverviewModelCopyWith(FinancesOverviewModel value,
          $Res Function(FinancesOverviewModel) then) =
      _$FinancesOverviewModelCopyWithImpl<$Res>;
  $Res call({double cashBalance, double spent, DateTime since});
}

/// @nodoc
class _$FinancesOverviewModelCopyWithImpl<$Res>
    implements $FinancesOverviewModelCopyWith<$Res> {
  _$FinancesOverviewModelCopyWithImpl(this._value, this._then);

  final FinancesOverviewModel _value;
  // ignore: unused_field
  final $Res Function(FinancesOverviewModel) _then;

  @override
  $Res call({
    Object? cashBalance = freezed,
    Object? spent = freezed,
    Object? since = freezed,
  }) {
    return _then(_value.copyWith(
      cashBalance: cashBalance == freezed
          ? _value.cashBalance
          : cashBalance // ignore: cast_nullable_to_non_nullable
              as double,
      spent: spent == freezed
          ? _value.spent
          : spent // ignore: cast_nullable_to_non_nullable
              as double,
      since: since == freezed
          ? _value.since
          : since // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$FinancesOverviewModelCopyWith<$Res>
    implements $FinancesOverviewModelCopyWith<$Res> {
  factory _$FinancesOverviewModelCopyWith(_FinancesOverviewModel value,
          $Res Function(_FinancesOverviewModel) then) =
      __$FinancesOverviewModelCopyWithImpl<$Res>;
  @override
  $Res call({double cashBalance, double spent, DateTime since});
}

/// @nodoc
class __$FinancesOverviewModelCopyWithImpl<$Res>
    extends _$FinancesOverviewModelCopyWithImpl<$Res>
    implements _$FinancesOverviewModelCopyWith<$Res> {
  __$FinancesOverviewModelCopyWithImpl(_FinancesOverviewModel _value,
      $Res Function(_FinancesOverviewModel) _then)
      : super(_value, (v) => _then(v as _FinancesOverviewModel));

  @override
  _FinancesOverviewModel get _value => super._value as _FinancesOverviewModel;

  @override
  $Res call({
    Object? cashBalance = freezed,
    Object? spent = freezed,
    Object? since = freezed,
  }) {
    return _then(_FinancesOverviewModel(
      cashBalance: cashBalance == freezed
          ? _value.cashBalance
          : cashBalance // ignore: cast_nullable_to_non_nullable
              as double,
      spent: spent == freezed
          ? _value.spent
          : spent // ignore: cast_nullable_to_non_nullable
              as double,
      since: since == freezed
          ? _value.since
          : since // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FinancesOverviewModel extends _FinancesOverviewModel {
  const _$_FinancesOverviewModel(
      {required this.cashBalance, required this.spent, required this.since})
      : super._();

  factory _$_FinancesOverviewModel.fromJson(Map<String, dynamic> json) =>
      _$$_FinancesOverviewModelFromJson(json);

  @override
  final double cashBalance;
  @override
  final double spent;
  @override
  final DateTime since;

  @override
  String toString() {
    return 'FinancesOverviewModel(cashBalance: $cashBalance, spent: $spent, since: $since)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FinancesOverviewModel &&
            const DeepCollectionEquality()
                .equals(other.cashBalance, cashBalance) &&
            const DeepCollectionEquality().equals(other.spent, spent) &&
            const DeepCollectionEquality().equals(other.since, since));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cashBalance),
      const DeepCollectionEquality().hash(spent),
      const DeepCollectionEquality().hash(since));

  @JsonKey(ignore: true)
  @override
  _$FinancesOverviewModelCopyWith<_FinancesOverviewModel> get copyWith =>
      __$FinancesOverviewModelCopyWithImpl<_FinancesOverviewModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FinancesOverviewModelToJson(this);
  }
}

abstract class _FinancesOverviewModel extends FinancesOverviewModel {
  const factory _FinancesOverviewModel(
      {required double cashBalance,
      required double spent,
      required DateTime since}) = _$_FinancesOverviewModel;
  const _FinancesOverviewModel._() : super._();

  factory _FinancesOverviewModel.fromJson(Map<String, dynamic> json) =
      _$_FinancesOverviewModel.fromJson;

  @override
  double get cashBalance;
  @override
  double get spent;
  @override
  DateTime get since;
  @override
  @JsonKey(ignore: true)
  _$FinancesOverviewModelCopyWith<_FinancesOverviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
