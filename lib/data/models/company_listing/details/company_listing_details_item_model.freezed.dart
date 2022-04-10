// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company_listing_details_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyListingDetailsItemModel _$CompanyListingDetailsItemModelFromJson(
    Map<String, dynamic> json) {
  return _CompanyListingDetailsItemModel.fromJson(json);
}

/// @nodoc
class _$CompanyListingDetailsItemModelTearOff {
  const _$CompanyListingDetailsItemModelTearOff();

  _CompanyListingDetailsItemModel call(
      {required String description,
      required String index,
      required String title}) {
    return _CompanyListingDetailsItemModel(
      description: description,
      index: index,
      title: title,
    );
  }

  CompanyListingDetailsItemModel fromJson(Map<String, Object?> json) {
    return CompanyListingDetailsItemModel.fromJson(json);
  }
}

/// @nodoc
const $CompanyListingDetailsItemModel =
    _$CompanyListingDetailsItemModelTearOff();

/// @nodoc
mixin _$CompanyListingDetailsItemModel {
  String get description => throw _privateConstructorUsedError;
  String get index => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyListingDetailsItemModelCopyWith<CompanyListingDetailsItemModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyListingDetailsItemModelCopyWith<$Res> {
  factory $CompanyListingDetailsItemModelCopyWith(
          CompanyListingDetailsItemModel value,
          $Res Function(CompanyListingDetailsItemModel) then) =
      _$CompanyListingDetailsItemModelCopyWithImpl<$Res>;
  $Res call({String description, String index, String title});
}

/// @nodoc
class _$CompanyListingDetailsItemModelCopyWithImpl<$Res>
    implements $CompanyListingDetailsItemModelCopyWith<$Res> {
  _$CompanyListingDetailsItemModelCopyWithImpl(this._value, this._then);

  final CompanyListingDetailsItemModel _value;
  // ignore: unused_field
  final $Res Function(CompanyListingDetailsItemModel) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? index = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CompanyListingDetailsItemModelCopyWith<$Res>
    implements $CompanyListingDetailsItemModelCopyWith<$Res> {
  factory _$CompanyListingDetailsItemModelCopyWith(
          _CompanyListingDetailsItemModel value,
          $Res Function(_CompanyListingDetailsItemModel) then) =
      __$CompanyListingDetailsItemModelCopyWithImpl<$Res>;
  @override
  $Res call({String description, String index, String title});
}

/// @nodoc
class __$CompanyListingDetailsItemModelCopyWithImpl<$Res>
    extends _$CompanyListingDetailsItemModelCopyWithImpl<$Res>
    implements _$CompanyListingDetailsItemModelCopyWith<$Res> {
  __$CompanyListingDetailsItemModelCopyWithImpl(
      _CompanyListingDetailsItemModel _value,
      $Res Function(_CompanyListingDetailsItemModel) _then)
      : super(_value, (v) => _then(v as _CompanyListingDetailsItemModel));

  @override
  _CompanyListingDetailsItemModel get _value =>
      super._value as _CompanyListingDetailsItemModel;

  @override
  $Res call({
    Object? description = freezed,
    Object? index = freezed,
    Object? title = freezed,
  }) {
    return _then(_CompanyListingDetailsItemModel(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyListingDetailsItemModel
    extends _CompanyListingDetailsItemModel {
  const _$_CompanyListingDetailsItemModel(
      {required this.description, required this.index, required this.title})
      : super._();

  factory _$_CompanyListingDetailsItemModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_CompanyListingDetailsItemModelFromJson(json);

  @override
  final String description;
  @override
  final String index;
  @override
  final String title;

  @override
  String toString() {
    return 'CompanyListingDetailsItemModel(description: $description, index: $index, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompanyListingDetailsItemModel &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$CompanyListingDetailsItemModelCopyWith<_CompanyListingDetailsItemModel>
      get copyWith => __$CompanyListingDetailsItemModelCopyWithImpl<
          _CompanyListingDetailsItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyListingDetailsItemModelToJson(this);
  }
}

abstract class _CompanyListingDetailsItemModel
    extends CompanyListingDetailsItemModel {
  const factory _CompanyListingDetailsItemModel(
      {required String description,
      required String index,
      required String title}) = _$_CompanyListingDetailsItemModel;
  const _CompanyListingDetailsItemModel._() : super._();

  factory _CompanyListingDetailsItemModel.fromJson(Map<String, dynamic> json) =
      _$_CompanyListingDetailsItemModel.fromJson;

  @override
  String get description;
  @override
  String get index;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$CompanyListingDetailsItemModelCopyWith<_CompanyListingDetailsItemModel>
      get copyWith => throw _privateConstructorUsedError;
}
