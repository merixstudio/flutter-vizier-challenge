// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionCategoryModel _$TransactionCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _TransactionCategoryModel.fromJson(json);
}

/// @nodoc
class _$TransactionCategoryModelTearOff {
  const _$TransactionCategoryModelTearOff();

  _TransactionCategoryModel call(
      {required String colorHex,
      required String name,
      required double value,
      required double percent}) {
    return _TransactionCategoryModel(
      colorHex: colorHex,
      name: name,
      value: value,
      percent: percent,
    );
  }

  TransactionCategoryModel fromJson(Map<String, Object?> json) {
    return TransactionCategoryModel.fromJson(json);
  }
}

/// @nodoc
const $TransactionCategoryModel = _$TransactionCategoryModelTearOff();

/// @nodoc
mixin _$TransactionCategoryModel {
  String get colorHex => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  double get percent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCategoryModelCopyWith<TransactionCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCategoryModelCopyWith<$Res> {
  factory $TransactionCategoryModelCopyWith(TransactionCategoryModel value,
          $Res Function(TransactionCategoryModel) then) =
      _$TransactionCategoryModelCopyWithImpl<$Res>;
  $Res call({String colorHex, String name, double value, double percent});
}

/// @nodoc
class _$TransactionCategoryModelCopyWithImpl<$Res>
    implements $TransactionCategoryModelCopyWith<$Res> {
  _$TransactionCategoryModelCopyWithImpl(this._value, this._then);

  final TransactionCategoryModel _value;
  // ignore: unused_field
  final $Res Function(TransactionCategoryModel) _then;

  @override
  $Res call({
    Object? colorHex = freezed,
    Object? name = freezed,
    Object? value = freezed,
    Object? percent = freezed,
  }) {
    return _then(_value.copyWith(
      colorHex: colorHex == freezed
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      percent: percent == freezed
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$TransactionCategoryModelCopyWith<$Res>
    implements $TransactionCategoryModelCopyWith<$Res> {
  factory _$TransactionCategoryModelCopyWith(_TransactionCategoryModel value,
          $Res Function(_TransactionCategoryModel) then) =
      __$TransactionCategoryModelCopyWithImpl<$Res>;
  @override
  $Res call({String colorHex, String name, double value, double percent});
}

/// @nodoc
class __$TransactionCategoryModelCopyWithImpl<$Res>
    extends _$TransactionCategoryModelCopyWithImpl<$Res>
    implements _$TransactionCategoryModelCopyWith<$Res> {
  __$TransactionCategoryModelCopyWithImpl(_TransactionCategoryModel _value,
      $Res Function(_TransactionCategoryModel) _then)
      : super(_value, (v) => _then(v as _TransactionCategoryModel));

  @override
  _TransactionCategoryModel get _value =>
      super._value as _TransactionCategoryModel;

  @override
  $Res call({
    Object? colorHex = freezed,
    Object? name = freezed,
    Object? value = freezed,
    Object? percent = freezed,
  }) {
    return _then(_TransactionCategoryModel(
      colorHex: colorHex == freezed
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      percent: percent == freezed
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionCategoryModel extends _TransactionCategoryModel {
  const _$_TransactionCategoryModel(
      {required this.colorHex,
      required this.name,
      required this.value,
      required this.percent})
      : super._();

  factory _$_TransactionCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionCategoryModelFromJson(json);

  @override
  final String colorHex;
  @override
  final String name;
  @override
  final double value;
  @override
  final double percent;

  @override
  String toString() {
    return 'TransactionCategoryModel(colorHex: $colorHex, name: $name, value: $value, percent: $percent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionCategoryModel &&
            const DeepCollectionEquality().equals(other.colorHex, colorHex) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.percent, percent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(colorHex),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(percent));

  @JsonKey(ignore: true)
  @override
  _$TransactionCategoryModelCopyWith<_TransactionCategoryModel> get copyWith =>
      __$TransactionCategoryModelCopyWithImpl<_TransactionCategoryModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionCategoryModelToJson(this);
  }
}

abstract class _TransactionCategoryModel extends TransactionCategoryModel {
  const factory _TransactionCategoryModel(
      {required String colorHex,
      required String name,
      required double value,
      required double percent}) = _$_TransactionCategoryModel;
  const _TransactionCategoryModel._() : super._();

  factory _TransactionCategoryModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionCategoryModel.fromJson;

  @override
  String get colorHex;
  @override
  String get name;
  @override
  double get value;
  @override
  double get percent;
  @override
  @JsonKey(ignore: true)
  _$TransactionCategoryModelCopyWith<_TransactionCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
