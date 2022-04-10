// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offer_slider_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfferSliderModel _$OfferSliderModelFromJson(Map<String, dynamic> json) {
  return _OfferSliderModel.fromJson(json);
}

/// @nodoc
class _$OfferSliderModelTearOff {
  const _$OfferSliderModelTearOff();

  _OfferSliderModel call(
      {required double current,
      required int frequency,
      required String label,
      required int maxValue,
      required OfferSliderType type}) {
    return _OfferSliderModel(
      current: current,
      frequency: frequency,
      label: label,
      maxValue: maxValue,
      type: type,
    );
  }

  OfferSliderModel fromJson(Map<String, Object?> json) {
    return OfferSliderModel.fromJson(json);
  }
}

/// @nodoc
const $OfferSliderModel = _$OfferSliderModelTearOff();

/// @nodoc
mixin _$OfferSliderModel {
  double get current => throw _privateConstructorUsedError;
  int get frequency => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  int get maxValue => throw _privateConstructorUsedError;
  OfferSliderType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferSliderModelCopyWith<OfferSliderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferSliderModelCopyWith<$Res> {
  factory $OfferSliderModelCopyWith(
          OfferSliderModel value, $Res Function(OfferSliderModel) then) =
      _$OfferSliderModelCopyWithImpl<$Res>;
  $Res call(
      {double current,
      int frequency,
      String label,
      int maxValue,
      OfferSliderType type});
}

/// @nodoc
class _$OfferSliderModelCopyWithImpl<$Res>
    implements $OfferSliderModelCopyWith<$Res> {
  _$OfferSliderModelCopyWithImpl(this._value, this._then);

  final OfferSliderModel _value;
  // ignore: unused_field
  final $Res Function(OfferSliderModel) _then;

  @override
  $Res call({
    Object? current = freezed,
    Object? frequency = freezed,
    Object? label = freezed,
    Object? maxValue = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as double,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      maxValue: maxValue == freezed
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OfferSliderType,
    ));
  }
}

/// @nodoc
abstract class _$OfferSliderModelCopyWith<$Res>
    implements $OfferSliderModelCopyWith<$Res> {
  factory _$OfferSliderModelCopyWith(
          _OfferSliderModel value, $Res Function(_OfferSliderModel) then) =
      __$OfferSliderModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double current,
      int frequency,
      String label,
      int maxValue,
      OfferSliderType type});
}

/// @nodoc
class __$OfferSliderModelCopyWithImpl<$Res>
    extends _$OfferSliderModelCopyWithImpl<$Res>
    implements _$OfferSliderModelCopyWith<$Res> {
  __$OfferSliderModelCopyWithImpl(
      _OfferSliderModel _value, $Res Function(_OfferSliderModel) _then)
      : super(_value, (v) => _then(v as _OfferSliderModel));

  @override
  _OfferSliderModel get _value => super._value as _OfferSliderModel;

  @override
  $Res call({
    Object? current = freezed,
    Object? frequency = freezed,
    Object? label = freezed,
    Object? maxValue = freezed,
    Object? type = freezed,
  }) {
    return _then(_OfferSliderModel(
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as double,
      frequency: frequency == freezed
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      maxValue: maxValue == freezed
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OfferSliderType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferSliderModel extends _OfferSliderModel {
  const _$_OfferSliderModel(
      {required this.current,
      required this.frequency,
      required this.label,
      required this.maxValue,
      required this.type})
      : super._();

  factory _$_OfferSliderModel.fromJson(Map<String, dynamic> json) =>
      _$$_OfferSliderModelFromJson(json);

  @override
  final double current;
  @override
  final int frequency;
  @override
  final String label;
  @override
  final int maxValue;
  @override
  final OfferSliderType type;

  @override
  String toString() {
    return 'OfferSliderModel(current: $current, frequency: $frequency, label: $label, maxValue: $maxValue, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OfferSliderModel &&
            const DeepCollectionEquality().equals(other.current, current) &&
            const DeepCollectionEquality().equals(other.frequency, frequency) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.maxValue, maxValue) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(current),
      const DeepCollectionEquality().hash(frequency),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(maxValue),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$OfferSliderModelCopyWith<_OfferSliderModel> get copyWith =>
      __$OfferSliderModelCopyWithImpl<_OfferSliderModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferSliderModelToJson(this);
  }
}

abstract class _OfferSliderModel extends OfferSliderModel {
  const factory _OfferSliderModel(
      {required double current,
      required int frequency,
      required String label,
      required int maxValue,
      required OfferSliderType type}) = _$_OfferSliderModel;
  const _OfferSliderModel._() : super._();

  factory _OfferSliderModel.fromJson(Map<String, dynamic> json) =
      _$_OfferSliderModel.fromJson;

  @override
  double get current;
  @override
  int get frequency;
  @override
  String get label;
  @override
  int get maxValue;
  @override
  OfferSliderType get type;
  @override
  @JsonKey(ignore: true)
  _$OfferSliderModelCopyWith<_OfferSliderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
