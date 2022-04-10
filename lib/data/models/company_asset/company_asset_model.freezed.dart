// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company_asset_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyAssetModel _$CompanyAssetModelFromJson(Map<String, dynamic> json) {
  return _CompanyAssetModel.fromJson(json);
}

/// @nodoc
class _$CompanyAssetModelTearOff {
  const _$CompanyAssetModelTearOff();

  _CompanyAssetModel call(
      {required String shortName,
      required String name,
      required String logo,
      required double currentValue,
      required double changePercentage}) {
    return _CompanyAssetModel(
      shortName: shortName,
      name: name,
      logo: logo,
      currentValue: currentValue,
      changePercentage: changePercentage,
    );
  }

  CompanyAssetModel fromJson(Map<String, Object?> json) {
    return CompanyAssetModel.fromJson(json);
  }
}

/// @nodoc
const $CompanyAssetModel = _$CompanyAssetModelTearOff();

/// @nodoc
mixin _$CompanyAssetModel {
  String get shortName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  double get currentValue => throw _privateConstructorUsedError;
  double get changePercentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyAssetModelCopyWith<CompanyAssetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyAssetModelCopyWith<$Res> {
  factory $CompanyAssetModelCopyWith(
          CompanyAssetModel value, $Res Function(CompanyAssetModel) then) =
      _$CompanyAssetModelCopyWithImpl<$Res>;
  $Res call(
      {String shortName,
      String name,
      String logo,
      double currentValue,
      double changePercentage});
}

/// @nodoc
class _$CompanyAssetModelCopyWithImpl<$Res>
    implements $CompanyAssetModelCopyWith<$Res> {
  _$CompanyAssetModelCopyWithImpl(this._value, this._then);

  final CompanyAssetModel _value;
  // ignore: unused_field
  final $Res Function(CompanyAssetModel) _then;

  @override
  $Res call({
    Object? shortName = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? currentValue = freezed,
    Object? changePercentage = freezed,
  }) {
    return _then(_value.copyWith(
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      currentValue: currentValue == freezed
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as double,
      changePercentage: changePercentage == freezed
          ? _value.changePercentage
          : changePercentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$CompanyAssetModelCopyWith<$Res>
    implements $CompanyAssetModelCopyWith<$Res> {
  factory _$CompanyAssetModelCopyWith(
          _CompanyAssetModel value, $Res Function(_CompanyAssetModel) then) =
      __$CompanyAssetModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String shortName,
      String name,
      String logo,
      double currentValue,
      double changePercentage});
}

/// @nodoc
class __$CompanyAssetModelCopyWithImpl<$Res>
    extends _$CompanyAssetModelCopyWithImpl<$Res>
    implements _$CompanyAssetModelCopyWith<$Res> {
  __$CompanyAssetModelCopyWithImpl(
      _CompanyAssetModel _value, $Res Function(_CompanyAssetModel) _then)
      : super(_value, (v) => _then(v as _CompanyAssetModel));

  @override
  _CompanyAssetModel get _value => super._value as _CompanyAssetModel;

  @override
  $Res call({
    Object? shortName = freezed,
    Object? name = freezed,
    Object? logo = freezed,
    Object? currentValue = freezed,
    Object? changePercentage = freezed,
  }) {
    return _then(_CompanyAssetModel(
      shortName: shortName == freezed
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      currentValue: currentValue == freezed
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as double,
      changePercentage: changePercentage == freezed
          ? _value.changePercentage
          : changePercentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyAssetModel extends _CompanyAssetModel {
  const _$_CompanyAssetModel(
      {required this.shortName,
      required this.name,
      required this.logo,
      required this.currentValue,
      required this.changePercentage})
      : super._();

  factory _$_CompanyAssetModel.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyAssetModelFromJson(json);

  @override
  final String shortName;
  @override
  final String name;
  @override
  final String logo;
  @override
  final double currentValue;
  @override
  final double changePercentage;

  @override
  String toString() {
    return 'CompanyAssetModel(shortName: $shortName, name: $name, logo: $logo, currentValue: $currentValue, changePercentage: $changePercentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompanyAssetModel &&
            const DeepCollectionEquality().equals(other.shortName, shortName) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality()
                .equals(other.currentValue, currentValue) &&
            const DeepCollectionEquality()
                .equals(other.changePercentage, changePercentage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shortName),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(currentValue),
      const DeepCollectionEquality().hash(changePercentage));

  @JsonKey(ignore: true)
  @override
  _$CompanyAssetModelCopyWith<_CompanyAssetModel> get copyWith =>
      __$CompanyAssetModelCopyWithImpl<_CompanyAssetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyAssetModelToJson(this);
  }
}

abstract class _CompanyAssetModel extends CompanyAssetModel {
  const factory _CompanyAssetModel(
      {required String shortName,
      required String name,
      required String logo,
      required double currentValue,
      required double changePercentage}) = _$_CompanyAssetModel;
  const _CompanyAssetModel._() : super._();

  factory _CompanyAssetModel.fromJson(Map<String, dynamic> json) =
      _$_CompanyAssetModel.fromJson;

  @override
  String get shortName;
  @override
  String get name;
  @override
  String get logo;
  @override
  double get currentValue;
  @override
  double get changePercentage;
  @override
  @JsonKey(ignore: true)
  _$CompanyAssetModelCopyWith<_CompanyAssetModel> get copyWith =>
      throw _privateConstructorUsedError;
}
