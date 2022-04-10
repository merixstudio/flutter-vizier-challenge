// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'retirement_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RetirementPlanModel _$RetirementPlanModelFromJson(Map<String, dynamic> json) {
  return _RetirementPlanModel.fromJson(json);
}

/// @nodoc
class _$RetirementPlanModelTearOff {
  const _$RetirementPlanModelTearOff();

  _RetirementPlanModel call(
      {required List<RetirementPlanDataModel> data,
      required DateTime from,
      required DateTime to}) {
    return _RetirementPlanModel(
      data: data,
      from: from,
      to: to,
    );
  }

  RetirementPlanModel fromJson(Map<String, Object?> json) {
    return RetirementPlanModel.fromJson(json);
  }
}

/// @nodoc
const $RetirementPlanModel = _$RetirementPlanModelTearOff();

/// @nodoc
mixin _$RetirementPlanModel {
  List<RetirementPlanDataModel> get data => throw _privateConstructorUsedError;
  DateTime get from => throw _privateConstructorUsedError;
  DateTime get to => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RetirementPlanModelCopyWith<RetirementPlanModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RetirementPlanModelCopyWith<$Res> {
  factory $RetirementPlanModelCopyWith(
          RetirementPlanModel value, $Res Function(RetirementPlanModel) then) =
      _$RetirementPlanModelCopyWithImpl<$Res>;
  $Res call({List<RetirementPlanDataModel> data, DateTime from, DateTime to});
}

/// @nodoc
class _$RetirementPlanModelCopyWithImpl<$Res>
    implements $RetirementPlanModelCopyWith<$Res> {
  _$RetirementPlanModelCopyWithImpl(this._value, this._then);

  final RetirementPlanModel _value;
  // ignore: unused_field
  final $Res Function(RetirementPlanModel) _then;

  @override
  $Res call({
    Object? data = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RetirementPlanDataModel>,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$RetirementPlanModelCopyWith<$Res>
    implements $RetirementPlanModelCopyWith<$Res> {
  factory _$RetirementPlanModelCopyWith(_RetirementPlanModel value,
          $Res Function(_RetirementPlanModel) then) =
      __$RetirementPlanModelCopyWithImpl<$Res>;
  @override
  $Res call({List<RetirementPlanDataModel> data, DateTime from, DateTime to});
}

/// @nodoc
class __$RetirementPlanModelCopyWithImpl<$Res>
    extends _$RetirementPlanModelCopyWithImpl<$Res>
    implements _$RetirementPlanModelCopyWith<$Res> {
  __$RetirementPlanModelCopyWithImpl(
      _RetirementPlanModel _value, $Res Function(_RetirementPlanModel) _then)
      : super(_value, (v) => _then(v as _RetirementPlanModel));

  @override
  _RetirementPlanModel get _value => super._value as _RetirementPlanModel;

  @override
  $Res call({
    Object? data = freezed,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_RetirementPlanModel(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<RetirementPlanDataModel>,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RetirementPlanModel extends _RetirementPlanModel {
  const _$_RetirementPlanModel(
      {required this.data, required this.from, required this.to})
      : super._();

  factory _$_RetirementPlanModel.fromJson(Map<String, dynamic> json) =>
      _$$_RetirementPlanModelFromJson(json);

  @override
  final List<RetirementPlanDataModel> data;
  @override
  final DateTime from;
  @override
  final DateTime to;

  @override
  String toString() {
    return 'RetirementPlanModel(data: $data, from: $from, to: $to)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RetirementPlanModel &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to));

  @JsonKey(ignore: true)
  @override
  _$RetirementPlanModelCopyWith<_RetirementPlanModel> get copyWith =>
      __$RetirementPlanModelCopyWithImpl<_RetirementPlanModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RetirementPlanModelToJson(this);
  }
}

abstract class _RetirementPlanModel extends RetirementPlanModel {
  const factory _RetirementPlanModel(
      {required List<RetirementPlanDataModel> data,
      required DateTime from,
      required DateTime to}) = _$_RetirementPlanModel;
  const _RetirementPlanModel._() : super._();

  factory _RetirementPlanModel.fromJson(Map<String, dynamic> json) =
      _$_RetirementPlanModel.fromJson;

  @override
  List<RetirementPlanDataModel> get data;
  @override
  DateTime get from;
  @override
  DateTime get to;
  @override
  @JsonKey(ignore: true)
  _$RetirementPlanModelCopyWith<_RetirementPlanModel> get copyWith =>
      throw _privateConstructorUsedError;
}
