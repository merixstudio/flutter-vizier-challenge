// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfferModel _$OfferModelFromJson(Map<String, dynamic> json) {
  return _OfferModel.fromJson(json);
}

/// @nodoc
class _$OfferModelTearOff {
  const _$OfferModelTearOff();

  _OfferModel call(
      {required double expectedValue,
      required String label,
      required String image,
      required String detailsImage,
      required List<OfferSliderModel> sliders,
      required OfferType type}) {
    return _OfferModel(
      expectedValue: expectedValue,
      label: label,
      image: image,
      detailsImage: detailsImage,
      sliders: sliders,
      type: type,
    );
  }

  OfferModel fromJson(Map<String, Object?> json) {
    return OfferModel.fromJson(json);
  }
}

/// @nodoc
const $OfferModel = _$OfferModelTearOff();

/// @nodoc
mixin _$OfferModel {
  double get expectedValue => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get detailsImage => throw _privateConstructorUsedError;
  List<OfferSliderModel> get sliders => throw _privateConstructorUsedError;
  OfferType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferModelCopyWith<OfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferModelCopyWith<$Res> {
  factory $OfferModelCopyWith(
          OfferModel value, $Res Function(OfferModel) then) =
      _$OfferModelCopyWithImpl<$Res>;
  $Res call(
      {double expectedValue,
      String label,
      String image,
      String detailsImage,
      List<OfferSliderModel> sliders,
      OfferType type});
}

/// @nodoc
class _$OfferModelCopyWithImpl<$Res> implements $OfferModelCopyWith<$Res> {
  _$OfferModelCopyWithImpl(this._value, this._then);

  final OfferModel _value;
  // ignore: unused_field
  final $Res Function(OfferModel) _then;

  @override
  $Res call({
    Object? expectedValue = freezed,
    Object? label = freezed,
    Object? image = freezed,
    Object? detailsImage = freezed,
    Object? sliders = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      expectedValue: expectedValue == freezed
          ? _value.expectedValue
          : expectedValue // ignore: cast_nullable_to_non_nullable
              as double,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      detailsImage: detailsImage == freezed
          ? _value.detailsImage
          : detailsImage // ignore: cast_nullable_to_non_nullable
              as String,
      sliders: sliders == freezed
          ? _value.sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<OfferSliderModel>,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OfferType,
    ));
  }
}

/// @nodoc
abstract class _$OfferModelCopyWith<$Res> implements $OfferModelCopyWith<$Res> {
  factory _$OfferModelCopyWith(
          _OfferModel value, $Res Function(_OfferModel) then) =
      __$OfferModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double expectedValue,
      String label,
      String image,
      String detailsImage,
      List<OfferSliderModel> sliders,
      OfferType type});
}

/// @nodoc
class __$OfferModelCopyWithImpl<$Res> extends _$OfferModelCopyWithImpl<$Res>
    implements _$OfferModelCopyWith<$Res> {
  __$OfferModelCopyWithImpl(
      _OfferModel _value, $Res Function(_OfferModel) _then)
      : super(_value, (v) => _then(v as _OfferModel));

  @override
  _OfferModel get _value => super._value as _OfferModel;

  @override
  $Res call({
    Object? expectedValue = freezed,
    Object? label = freezed,
    Object? image = freezed,
    Object? detailsImage = freezed,
    Object? sliders = freezed,
    Object? type = freezed,
  }) {
    return _then(_OfferModel(
      expectedValue: expectedValue == freezed
          ? _value.expectedValue
          : expectedValue // ignore: cast_nullable_to_non_nullable
              as double,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      detailsImage: detailsImage == freezed
          ? _value.detailsImage
          : detailsImage // ignore: cast_nullable_to_non_nullable
              as String,
      sliders: sliders == freezed
          ? _value.sliders
          : sliders // ignore: cast_nullable_to_non_nullable
              as List<OfferSliderModel>,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OfferType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferModel extends _OfferModel {
  const _$_OfferModel(
      {required this.expectedValue,
      required this.label,
      required this.image,
      required this.detailsImage,
      required this.sliders,
      required this.type})
      : super._();

  factory _$_OfferModel.fromJson(Map<String, dynamic> json) =>
      _$$_OfferModelFromJson(json);

  @override
  final double expectedValue;
  @override
  final String label;
  @override
  final String image;
  @override
  final String detailsImage;
  @override
  final List<OfferSliderModel> sliders;
  @override
  final OfferType type;

  @override
  String toString() {
    return 'OfferModel(expectedValue: $expectedValue, label: $label, image: $image, detailsImage: $detailsImage, sliders: $sliders, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OfferModel &&
            const DeepCollectionEquality()
                .equals(other.expectedValue, expectedValue) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.detailsImage, detailsImage) &&
            const DeepCollectionEquality().equals(other.sliders, sliders) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(expectedValue),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(detailsImage),
      const DeepCollectionEquality().hash(sliders),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$OfferModelCopyWith<_OfferModel> get copyWith =>
      __$OfferModelCopyWithImpl<_OfferModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferModelToJson(this);
  }
}

abstract class _OfferModel extends OfferModel {
  const factory _OfferModel(
      {required double expectedValue,
      required String label,
      required String image,
      required String detailsImage,
      required List<OfferSliderModel> sliders,
      required OfferType type}) = _$_OfferModel;
  const _OfferModel._() : super._();

  factory _OfferModel.fromJson(Map<String, dynamic> json) =
      _$_OfferModel.fromJson;

  @override
  double get expectedValue;
  @override
  String get label;
  @override
  String get image;
  @override
  String get detailsImage;
  @override
  List<OfferSliderModel> get sliders;
  @override
  OfferType get type;
  @override
  @JsonKey(ignore: true)
  _$OfferModelCopyWith<_OfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}
