// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'company_listing_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CompanyListingHistoryModel _$CompanyListingHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _CompanyListingHistoryModel.fromJson(json);
}

/// @nodoc
class _$CompanyListingHistoryModelTearOff {
  const _$CompanyListingHistoryModelTearOff();

  _CompanyListingHistoryModel call(
      {required List<CompanyListingHistoryDataModel> history,
      required DateTime from,
      required DateTime to,
      required int daysBack}) {
    return _CompanyListingHistoryModel(
      history: history,
      from: from,
      to: to,
      daysBack: daysBack,
    );
  }

  CompanyListingHistoryModel fromJson(Map<String, Object?> json) {
    return CompanyListingHistoryModel.fromJson(json);
  }
}

/// @nodoc
const $CompanyListingHistoryModel = _$CompanyListingHistoryModelTearOff();

/// @nodoc
mixin _$CompanyListingHistoryModel {
  List<CompanyListingHistoryDataModel> get history =>
      throw _privateConstructorUsedError;
  DateTime get from => throw _privateConstructorUsedError;
  DateTime get to => throw _privateConstructorUsedError;
  int get daysBack => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CompanyListingHistoryModelCopyWith<CompanyListingHistoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyListingHistoryModelCopyWith<$Res> {
  factory $CompanyListingHistoryModelCopyWith(CompanyListingHistoryModel value,
          $Res Function(CompanyListingHistoryModel) then) =
      _$CompanyListingHistoryModelCopyWithImpl<$Res>;
  $Res call(
      {List<CompanyListingHistoryDataModel> history,
      DateTime from,
      DateTime to,
      int daysBack});
}

/// @nodoc
class _$CompanyListingHistoryModelCopyWithImpl<$Res>
    implements $CompanyListingHistoryModelCopyWith<$Res> {
  _$CompanyListingHistoryModelCopyWithImpl(this._value, this._then);

  final CompanyListingHistoryModel _value;
  // ignore: unused_field
  final $Res Function(CompanyListingHistoryModel) _then;

  @override
  $Res call({
    Object? history = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? daysBack = freezed,
  }) {
    return _then(_value.copyWith(
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<CompanyListingHistoryDataModel>,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
      daysBack: daysBack == freezed
          ? _value.daysBack
          : daysBack // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CompanyListingHistoryModelCopyWith<$Res>
    implements $CompanyListingHistoryModelCopyWith<$Res> {
  factory _$CompanyListingHistoryModelCopyWith(
          _CompanyListingHistoryModel value,
          $Res Function(_CompanyListingHistoryModel) then) =
      __$CompanyListingHistoryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CompanyListingHistoryDataModel> history,
      DateTime from,
      DateTime to,
      int daysBack});
}

/// @nodoc
class __$CompanyListingHistoryModelCopyWithImpl<$Res>
    extends _$CompanyListingHistoryModelCopyWithImpl<$Res>
    implements _$CompanyListingHistoryModelCopyWith<$Res> {
  __$CompanyListingHistoryModelCopyWithImpl(_CompanyListingHistoryModel _value,
      $Res Function(_CompanyListingHistoryModel) _then)
      : super(_value, (v) => _then(v as _CompanyListingHistoryModel));

  @override
  _CompanyListingHistoryModel get _value =>
      super._value as _CompanyListingHistoryModel;

  @override
  $Res call({
    Object? history = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? daysBack = freezed,
  }) {
    return _then(_CompanyListingHistoryModel(
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<CompanyListingHistoryDataModel>,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
      daysBack: daysBack == freezed
          ? _value.daysBack
          : daysBack // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CompanyListingHistoryModel extends _CompanyListingHistoryModel {
  const _$_CompanyListingHistoryModel(
      {required this.history,
      required this.from,
      required this.to,
      required this.daysBack})
      : super._();

  factory _$_CompanyListingHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$$_CompanyListingHistoryModelFromJson(json);

  @override
  final List<CompanyListingHistoryDataModel> history;
  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final int daysBack;

  @override
  String toString() {
    return 'CompanyListingHistoryModel(history: $history, from: $from, to: $to, daysBack: $daysBack)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CompanyListingHistoryModel &&
            const DeepCollectionEquality().equals(other.history, history) &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.daysBack, daysBack));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(history),
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(daysBack));

  @JsonKey(ignore: true)
  @override
  _$CompanyListingHistoryModelCopyWith<_CompanyListingHistoryModel>
      get copyWith => __$CompanyListingHistoryModelCopyWithImpl<
          _CompanyListingHistoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CompanyListingHistoryModelToJson(this);
  }
}

abstract class _CompanyListingHistoryModel extends CompanyListingHistoryModel {
  const factory _CompanyListingHistoryModel(
      {required List<CompanyListingHistoryDataModel> history,
      required DateTime from,
      required DateTime to,
      required int daysBack}) = _$_CompanyListingHistoryModel;
  const _CompanyListingHistoryModel._() : super._();

  factory _CompanyListingHistoryModel.fromJson(Map<String, dynamic> json) =
      _$_CompanyListingHistoryModel.fromJson;

  @override
  List<CompanyListingHistoryDataModel> get history;
  @override
  DateTime get from;
  @override
  DateTime get to;
  @override
  int get daysBack;
  @override
  @JsonKey(ignore: true)
  _$CompanyListingHistoryModelCopyWith<_CompanyListingHistoryModel>
      get copyWith => throw _privateConstructorUsedError;
}
