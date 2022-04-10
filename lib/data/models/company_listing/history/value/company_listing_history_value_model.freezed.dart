// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company_listing_history_value_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyListingHistoryValueModel _$CompanyListingHistoryValueModelFromJson(
    Map<String, dynamic> json) {
  return _CompanyListingHistoryValueModel.fromJson(json);
}

/// @nodoc
class _$CompanyListingHistoryValueModelTearOff {
  const _$CompanyListingHistoryValueModelTearOff();

  _CompanyListingHistoryValueModel call(
      {required double min, required double max}) {
    return _CompanyListingHistoryValueModel(
      min: min,
      max: max,
    );
  }

  CompanyListingHistoryValueModel fromJson(Map<String, Object?> json) {
    return CompanyListingHistoryValueModel.fromJson(json);
  }
}

/// @nodoc
const $CompanyListingHistoryValueModel =
    _$CompanyListingHistoryValueModelTearOff();

/// @nodoc
mixin _$CompanyListingHistoryValueModel {
  double get min => throw _privateConstructorUsedError;
  double get max => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyListingHistoryValueModelCopyWith<CompanyListingHistoryValueModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyListingHistoryValueModelCopyWith<$Res> {
  factory $CompanyListingHistoryValueModelCopyWith(
          CompanyListingHistoryValueModel value,
          $Res Function(CompanyListingHistoryValueModel) then) =
      _$CompanyListingHistoryValueModelCopyWithImpl<$Res>;
  $Res call({double min, double max});
}

/// @nodoc
class _$CompanyListingHistoryValueModelCopyWithImpl<$Res>
    implements $CompanyListingHistoryValueModelCopyWith<$Res> {
  _$CompanyListingHistoryValueModelCopyWithImpl(this._value, this._then);

  final CompanyListingHistoryValueModel _value;
  // ignore: unused_field
  final $Res Function(CompanyListingHistoryValueModel) _then;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_value.copyWith(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$CompanyListingHistoryValueModelCopyWith<$Res>
    implements $CompanyListingHistoryValueModelCopyWith<$Res> {
  factory _$CompanyListingHistoryValueModelCopyWith(
          _CompanyListingHistoryValueModel value,
          $Res Function(_CompanyListingHistoryValueModel) then) =
      __$CompanyListingHistoryValueModelCopyWithImpl<$Res>;
  @override
  $Res call({double min, double max});
}

/// @nodoc
class __$CompanyListingHistoryValueModelCopyWithImpl<$Res>
    extends _$CompanyListingHistoryValueModelCopyWithImpl<$Res>
    implements _$CompanyListingHistoryValueModelCopyWith<$Res> {
  __$CompanyListingHistoryValueModelCopyWithImpl(
      _CompanyListingHistoryValueModel _value,
      $Res Function(_CompanyListingHistoryValueModel) _then)
      : super(_value, (v) => _then(v as _CompanyListingHistoryValueModel));

  @override
  _CompanyListingHistoryValueModel get _value =>
      super._value as _CompanyListingHistoryValueModel;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
  }) {
    return _then(_CompanyListingHistoryValueModel(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyListingHistoryValueModel
    extends _CompanyListingHistoryValueModel {
  const _$_CompanyListingHistoryValueModel(
      {required this.min, required this.max})
      : super._();

  factory _$_CompanyListingHistoryValueModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_CompanyListingHistoryValueModelFromJson(json);

  @override
  final double min;
  @override
  final double max;

  @override
  String toString() {
    return 'CompanyListingHistoryValueModel(min: $min, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompanyListingHistoryValueModel &&
            const DeepCollectionEquality().equals(other.min, min) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(min),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  _$CompanyListingHistoryValueModelCopyWith<_CompanyListingHistoryValueModel>
      get copyWith => __$CompanyListingHistoryValueModelCopyWithImpl<
          _CompanyListingHistoryValueModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyListingHistoryValueModelToJson(this);
  }
}

abstract class _CompanyListingHistoryValueModel
    extends CompanyListingHistoryValueModel {
  const factory _CompanyListingHistoryValueModel(
      {required double min,
      required double max}) = _$_CompanyListingHistoryValueModel;
  const _CompanyListingHistoryValueModel._() : super._();

  factory _CompanyListingHistoryValueModel.fromJson(Map<String, dynamic> json) =
      _$_CompanyListingHistoryValueModel.fromJson;

  @override
  double get min;
  @override
  double get max;
  @override
  @JsonKey(ignore: true)
  _$CompanyListingHistoryValueModelCopyWith<_CompanyListingHistoryValueModel>
      get copyWith => throw _privateConstructorUsedError;
}
