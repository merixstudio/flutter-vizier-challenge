// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'retirement_plan_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RetirementPlanDataModel _$RetirementPlanDataModelFromJson(
    Map<String, dynamic> json) {
  return _RetirementPlanDataModel.fromJson(json);
}

/// @nodoc
class _$RetirementPlanDataModelTearOff {
  const _$RetirementPlanDataModelTearOff();

  _RetirementPlanDataModel call(
      {required DateTime date, required double value}) {
    return _RetirementPlanDataModel(
      date: date,
      value: value,
    );
  }

  RetirementPlanDataModel fromJson(Map<String, Object?> json) {
    return RetirementPlanDataModel.fromJson(json);
  }
}

/// @nodoc
const $RetirementPlanDataModel = _$RetirementPlanDataModelTearOff();

/// @nodoc
mixin _$RetirementPlanDataModel {
  DateTime get date => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RetirementPlanDataModelCopyWith<RetirementPlanDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetirementPlanDataModelCopyWith<$Res> {
  factory $RetirementPlanDataModelCopyWith(RetirementPlanDataModel value,
          $Res Function(RetirementPlanDataModel) then) =
      _$RetirementPlanDataModelCopyWithImpl<$Res>;
  $Res call({DateTime date, double value});
}

/// @nodoc
class _$RetirementPlanDataModelCopyWithImpl<$Res>
    implements $RetirementPlanDataModelCopyWith<$Res> {
  _$RetirementPlanDataModelCopyWithImpl(this._value, this._then);

  final RetirementPlanDataModel _value;
  // ignore: unused_field
  final $Res Function(RetirementPlanDataModel) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$RetirementPlanDataModelCopyWith<$Res>
    implements $RetirementPlanDataModelCopyWith<$Res> {
  factory _$RetirementPlanDataModelCopyWith(_RetirementPlanDataModel value,
          $Res Function(_RetirementPlanDataModel) then) =
      __$RetirementPlanDataModelCopyWithImpl<$Res>;
  @override
  $Res call({DateTime date, double value});
}

/// @nodoc
class __$RetirementPlanDataModelCopyWithImpl<$Res>
    extends _$RetirementPlanDataModelCopyWithImpl<$Res>
    implements _$RetirementPlanDataModelCopyWith<$Res> {
  __$RetirementPlanDataModelCopyWithImpl(_RetirementPlanDataModel _value,
      $Res Function(_RetirementPlanDataModel) _then)
      : super(_value, (v) => _then(v as _RetirementPlanDataModel));

  @override
  _RetirementPlanDataModel get _value =>
      super._value as _RetirementPlanDataModel;

  @override
  $Res call({
    Object? date = freezed,
    Object? value = freezed,
  }) {
    return _then(_RetirementPlanDataModel(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RetirementPlanDataModel extends _RetirementPlanDataModel {
  const _$_RetirementPlanDataModel({required this.date, required this.value})
      : super._();

  factory _$_RetirementPlanDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_RetirementPlanDataModelFromJson(json);

  @override
  final DateTime date;
  @override
  final double value;

  @override
  String toString() {
    return 'RetirementPlanDataModel(date: $date, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RetirementPlanDataModel &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$RetirementPlanDataModelCopyWith<_RetirementPlanDataModel> get copyWith =>
      __$RetirementPlanDataModelCopyWithImpl<_RetirementPlanDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RetirementPlanDataModelToJson(this);
  }
}

abstract class _RetirementPlanDataModel extends RetirementPlanDataModel {
  const factory _RetirementPlanDataModel(
      {required DateTime date,
      required double value}) = _$_RetirementPlanDataModel;
  const _RetirementPlanDataModel._() : super._();

  factory _RetirementPlanDataModel.fromJson(Map<String, dynamic> json) =
      _$_RetirementPlanDataModel.fromJson;

  @override
  DateTime get date;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$RetirementPlanDataModelCopyWith<_RetirementPlanDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
