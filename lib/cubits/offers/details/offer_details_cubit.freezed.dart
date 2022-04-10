// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offer_details_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OfferDetailsStateTearOff {
  const _$OfferDetailsStateTearOff();

  _OfferDetailsState call(
      {required List<OfferSliderModel> sliders,
      double? expectedValue,
      double? calculatedValue}) {
    return _OfferDetailsState(
      sliders: sliders,
      expectedValue: expectedValue,
      calculatedValue: calculatedValue,
    );
  }
}

/// @nodoc
const $OfferDetailsState = _$OfferDetailsStateTearOff();

/// @nodoc
mixin _$OfferDetailsState {
  List<OfferSliderModel> get sliders => throw _privateConstructorUsedError;
  double? get expectedValue => throw _privateConstructorUsedError;
  double? get calculatedValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfferDetailsStateCopyWith<OfferDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferDetailsStateCopyWith<$Res> {
  factory $OfferDetailsStateCopyWith(
          OfferDetailsState value, $Res Function(OfferDetailsState) then) =
      _$OfferDetailsStateCopyWithImpl<$Res>;
  $Res call(
      {List<OfferSliderModel> sliders,
      double? expectedValue,
      double? calculatedValue});
}

/// @nodoc
class _$OfferDetailsStateCopyWithImpl<$Res>
    implements $OfferDetailsStateCopyWith<$Res> {
  _$OfferDetailsStateCopyWithImpl(this._value, this._then);

  final OfferDetailsState _value;
  // ignore: unused_field
  final $Res Function(OfferDetailsState) _then;

  @override
  $Res call({
    Object? sliders = freezed,
    Object? expectedValue = freezed,
    Object? calculatedValue = freezed,
  }) {
    return _then(_value.copyWith(
      sliders: sliders == freezed
          ? _value.sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<OfferSliderModel>,
      expectedValue: expectedValue == freezed
          ? _value.expectedValue
          : expectedValue // ignore: cast_nullable_to_non_nullable
              as double?,
      calculatedValue: calculatedValue == freezed
          ? _value.calculatedValue
          : calculatedValue // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$OfferDetailsStateCopyWith<$Res>
    implements $OfferDetailsStateCopyWith<$Res> {
  factory _$OfferDetailsStateCopyWith(
          _OfferDetailsState value, $Res Function(_OfferDetailsState) then) =
      __$OfferDetailsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<OfferSliderModel> sliders,
      double? expectedValue,
      double? calculatedValue});
}

/// @nodoc
class __$OfferDetailsStateCopyWithImpl<$Res>
    extends _$OfferDetailsStateCopyWithImpl<$Res>
    implements _$OfferDetailsStateCopyWith<$Res> {
  __$OfferDetailsStateCopyWithImpl(
      _OfferDetailsState _value, $Res Function(_OfferDetailsState) _then)
      : super(_value, (v) => _then(v as _OfferDetailsState));

  @override
  _OfferDetailsState get _value => super._value as _OfferDetailsState;

  @override
  $Res call({
    Object? sliders = freezed,
    Object? expectedValue = freezed,
    Object? calculatedValue = freezed,
  }) {
    return _then(_OfferDetailsState(
      sliders: sliders == freezed
          ? _value.sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<OfferSliderModel>,
      expectedValue: expectedValue == freezed
          ? _value.expectedValue
          : expectedValue // ignore: cast_nullable_to_non_nullable
              as double?,
      calculatedValue: calculatedValue == freezed
          ? _value.calculatedValue
          : calculatedValue // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_OfferDetailsState implements _OfferDetailsState {
  const _$_OfferDetailsState(
      {required this.sliders, this.expectedValue, this.calculatedValue});

  @override
  final List<OfferSliderModel> sliders;
  @override
  final double? expectedValue;
  @override
  final double? calculatedValue;

  @override
  String toString() {
    return 'OfferDetailsState(sliders: $sliders, expectedValue: $expectedValue, calculatedValue: $calculatedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OfferDetailsState &&
            const DeepCollectionEquality().equals(other.sliders, sliders) &&
            const DeepCollectionEquality()
                .equals(other.expectedValue, expectedValue) &&
            const DeepCollectionEquality()
                .equals(other.calculatedValue, calculatedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sliders),
      const DeepCollectionEquality().hash(expectedValue),
      const DeepCollectionEquality().hash(calculatedValue));

  @JsonKey(ignore: true)
  @override
  _$OfferDetailsStateCopyWith<_OfferDetailsState> get copyWith =>
      __$OfferDetailsStateCopyWithImpl<_OfferDetailsState>(this, _$identity);
}

abstract class _OfferDetailsState implements OfferDetailsState {
  const factory _OfferDetailsState(
      {required List<OfferSliderModel> sliders,
      double? expectedValue,
      double? calculatedValue}) = _$_OfferDetailsState;

  @override
  List<OfferSliderModel> get sliders;
  @override
  double? get expectedValue;
  @override
  double? get calculatedValue;
  @override
  @JsonKey(ignore: true)
  _$OfferDetailsStateCopyWith<_OfferDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
