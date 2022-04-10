// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionModel _$TransactionModelFromJson(Map<String, dynamic> json) {
  return _TransactionModel.fromJson(json);
}

/// @nodoc
class _$TransactionModelTearOff {
  const _$TransactionModelTearOff();

  _TransactionModel call(
      {required String categoryName,
      required DateTime date,
      required String name,
      required double value,
      String? backgroundColorHex,
      String? image}) {
    return _TransactionModel(
      categoryName: categoryName,
      date: date,
      name: name,
      value: value,
      backgroundColorHex: backgroundColorHex,
      image: image,
    );
  }

  TransactionModel fromJson(Map<String, Object?> json) {
    return TransactionModel.fromJson(json);
  }
}

/// @nodoc
const $TransactionModel = _$TransactionModelTearOff();

/// @nodoc
mixin _$TransactionModel {
  String get categoryName => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;
  String? get backgroundColorHex => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionModelCopyWith<TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionModelCopyWith<$Res> {
  factory $TransactionModelCopyWith(
          TransactionModel value, $Res Function(TransactionModel) then) =
      _$TransactionModelCopyWithImpl<$Res>;
  $Res call(
      {String categoryName,
      DateTime date,
      String name,
      double value,
      String? backgroundColorHex,
      String? image});
}

/// @nodoc
class _$TransactionModelCopyWithImpl<$Res>
    implements $TransactionModelCopyWith<$Res> {
  _$TransactionModelCopyWithImpl(this._value, this._then);

  final TransactionModel _value;
  // ignore: unused_field
  final $Res Function(TransactionModel) _then;

  @override
  $Res call({
    Object? categoryName = freezed,
    Object? date = freezed,
    Object? name = freezed,
    Object? value = freezed,
    Object? backgroundColorHex = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      backgroundColorHex: backgroundColorHex == freezed
          ? _value.backgroundColorHex
          : backgroundColorHex // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TransactionModelCopyWith<$Res>
    implements $TransactionModelCopyWith<$Res> {
  factory _$TransactionModelCopyWith(
          _TransactionModel value, $Res Function(_TransactionModel) then) =
      __$TransactionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String categoryName,
      DateTime date,
      String name,
      double value,
      String? backgroundColorHex,
      String? image});
}

/// @nodoc
class __$TransactionModelCopyWithImpl<$Res>
    extends _$TransactionModelCopyWithImpl<$Res>
    implements _$TransactionModelCopyWith<$Res> {
  __$TransactionModelCopyWithImpl(
      _TransactionModel _value, $Res Function(_TransactionModel) _then)
      : super(_value, (v) => _then(v as _TransactionModel));

  @override
  _TransactionModel get _value => super._value as _TransactionModel;

  @override
  $Res call({
    Object? categoryName = freezed,
    Object? date = freezed,
    Object? name = freezed,
    Object? value = freezed,
    Object? backgroundColorHex = freezed,
    Object? image = freezed,
  }) {
    return _then(_TransactionModel(
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      backgroundColorHex: backgroundColorHex == freezed
          ? _value.backgroundColorHex
          : backgroundColorHex // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionModel extends _TransactionModel {
  const _$_TransactionModel(
      {required this.categoryName,
      required this.date,
      required this.name,
      required this.value,
      this.backgroundColorHex,
      this.image})
      : super._();

  factory _$_TransactionModel.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionModelFromJson(json);

  @override
  final String categoryName;
  @override
  final DateTime date;
  @override
  final String name;
  @override
  final double value;
  @override
  final String? backgroundColorHex;
  @override
  final String? image;

  @override
  String toString() {
    return 'TransactionModel(categoryName: $categoryName, date: $date, name: $name, value: $value, backgroundColorHex: $backgroundColorHex, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TransactionModel &&
            const DeepCollectionEquality()
                .equals(other.categoryName, categoryName) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.backgroundColorHex, backgroundColorHex) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(categoryName),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(backgroundColorHex),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$TransactionModelCopyWith<_TransactionModel> get copyWith =>
      __$TransactionModelCopyWithImpl<_TransactionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionModelToJson(this);
  }
}

abstract class _TransactionModel extends TransactionModel {
  const factory _TransactionModel(
      {required String categoryName,
      required DateTime date,
      required String name,
      required double value,
      String? backgroundColorHex,
      String? image}) = _$_TransactionModel;
  const _TransactionModel._() : super._();

  factory _TransactionModel.fromJson(Map<String, dynamic> json) =
      _$_TransactionModel.fromJson;

  @override
  String get categoryName;
  @override
  DateTime get date;
  @override
  String get name;
  @override
  double get value;
  @override
  String? get backgroundColorHex;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$TransactionModelCopyWith<_TransactionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
