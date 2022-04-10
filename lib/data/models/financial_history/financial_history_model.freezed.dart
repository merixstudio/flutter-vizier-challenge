// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'financial_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FinancialHistoryModel _$FinancialHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _FinancialHistoryModel.fromJson(json);
}

/// @nodoc
class _$FinancialHistoryModelTearOff {
  const _$FinancialHistoryModelTearOff();

  _FinancialHistoryModel call(
      {required List<FinancialHistoryDataModel> history,
      required DateTime from,
      required DateTime to,
      required int daysBack}) {
    return _FinancialHistoryModel(
      history: history,
      from: from,
      to: to,
      daysBack: daysBack,
    );
  }

  FinancialHistoryModel fromJson(Map<String, Object?> json) {
    return FinancialHistoryModel.fromJson(json);
  }
}

/// @nodoc
const $FinancialHistoryModel = _$FinancialHistoryModelTearOff();

/// @nodoc
mixin _$FinancialHistoryModel {
  List<FinancialHistoryDataModel> get history =>
      throw _privateConstructorUsedError;
  DateTime get from => throw _privateConstructorUsedError;
  DateTime get to => throw _privateConstructorUsedError;
  int get daysBack => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FinancialHistoryModelCopyWith<FinancialHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancialHistoryModelCopyWith<$Res> {
  factory $FinancialHistoryModelCopyWith(FinancialHistoryModel value,
          $Res Function(FinancialHistoryModel) then) =
      _$FinancialHistoryModelCopyWithImpl<$Res>;
  $Res call(
      {List<FinancialHistoryDataModel> history,
      DateTime from,
      DateTime to,
      int daysBack});
}

/// @nodoc
class _$FinancialHistoryModelCopyWithImpl<$Res>
    implements $FinancialHistoryModelCopyWith<$Res> {
  _$FinancialHistoryModelCopyWithImpl(this._value, this._then);

  final FinancialHistoryModel _value;
  // ignore: unused_field
  final $Res Function(FinancialHistoryModel) _then;

  @override
  $Res call({
    Object? history = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? daysBack = freezed,
  }) {
    return _then(_value.copyWith(
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<FinancialHistoryDataModel>,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
      daysBack: daysBack == freezed
          ? _value.daysBack
          : daysBack // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$FinancialHistoryModelCopyWith<$Res>
    implements $FinancialHistoryModelCopyWith<$Res> {
  factory _$FinancialHistoryModelCopyWith(_FinancialHistoryModel value,
          $Res Function(_FinancialHistoryModel) then) =
      __$FinancialHistoryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<FinancialHistoryDataModel> history,
      DateTime from,
      DateTime to,
      int daysBack});
}

/// @nodoc
class __$FinancialHistoryModelCopyWithImpl<$Res>
    extends _$FinancialHistoryModelCopyWithImpl<$Res>
    implements _$FinancialHistoryModelCopyWith<$Res> {
  __$FinancialHistoryModelCopyWithImpl(_FinancialHistoryModel _value,
      $Res Function(_FinancialHistoryModel) _then)
      : super(_value, (v) => _then(v as _FinancialHistoryModel));

  @override
  _FinancialHistoryModel get _value => super._value as _FinancialHistoryModel;

  @override
  $Res call({
    Object? history = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? daysBack = freezed,
  }) {
    return _then(_FinancialHistoryModel(
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<FinancialHistoryDataModel>,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
      daysBack: daysBack == freezed
          ? _value.daysBack
          : daysBack // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FinancialHistoryModel extends _FinancialHistoryModel {
  const _$_FinancialHistoryModel(
      {required this.history,
      required this.from,
      required this.to,
      required this.daysBack})
      : super._();

  factory _$_FinancialHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_FinancialHistoryModelFromJson(json);

  @override
  final List<FinancialHistoryDataModel> history;
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final int daysBack;

  @override
  String toString() {
    return 'FinancialHistoryModel(history: $history, from: $from, to: $to, daysBack: $daysBack)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FinancialHistoryModel &&
            const DeepCollectionEquality().equals(other.history, history) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.daysBack, daysBack));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(history),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(daysBack));

  @JsonKey(ignore: true)
  @override
  _$FinancialHistoryModelCopyWith<_FinancialHistoryModel> get copyWith =>
      __$FinancialHistoryModelCopyWithImpl<_FinancialHistoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FinancialHistoryModelToJson(this);
  }
}

abstract class _FinancialHistoryModel extends FinancialHistoryModel {
  const factory _FinancialHistoryModel(
      {required List<FinancialHistoryDataModel> history,
      required DateTime from,
      required DateTime to,
      required int daysBack}) = _$_FinancialHistoryModel;
  const _FinancialHistoryModel._() : super._();

  factory _FinancialHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_FinancialHistoryModel.fromJson;

  @override
  List<FinancialHistoryDataModel> get history;
  @override
  DateTime get from;
  @override
  DateTime get to;
  @override
  int get daysBack;
  @override
  @JsonKey(ignore: true)
  _$FinancialHistoryModelCopyWith<_FinancialHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
