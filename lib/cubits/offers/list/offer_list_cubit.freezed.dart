// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offer_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OfferListStateTearOff {
  const _$OfferListStateTearOff();

  _Loaded loaded({required List<OfferModel> offers}) {
    return _Loaded(
      offers: offers,
    );
  }

  _Loading loading() {
    return const _Loading();
  }

  _Error failure({required AppError error}) {
    return _Error(
      error: error,
    );
  }
}

/// @nodoc
const $OfferListState = _$OfferListStateTearOff();

/// @nodoc
mixin _$OfferListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OfferModel> offers) loaded,
    required TResult Function() loading,
    required TResult Function(AppError error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<OfferModel> offers)? loaded,
    TResult Function()? loading,
    TResult Function(AppError error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OfferModel> offers)? loaded,
    TResult Function()? loading,
    TResult Function(AppError error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferListStateCopyWith<$Res> {
  factory $OfferListStateCopyWith(
          OfferListState value, $Res Function(OfferListState) then) =
      _$OfferListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OfferListStateCopyWithImpl<$Res>
    implements $OfferListStateCopyWith<$Res> {
  _$OfferListStateCopyWithImpl(this._value, this._then);

  final OfferListState _value;
  // ignore: unused_field
  final $Res Function(OfferListState) _then;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<OfferModel> offers});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$OfferListStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? offers = freezed,
  }) {
    return _then(_Loaded(
      offers: offers == freezed
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<OfferModel>,
    ));
  }
}

/// @nodoc

class _$_Loaded extends _Loaded {
  const _$_Loaded({required this.offers}) : super._();

  @override
  final List<OfferModel> offers;

  @override
  String toString() {
    return 'OfferListState.loaded(offers: $offers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.offers, offers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(offers));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OfferModel> offers) loaded,
    required TResult Function() loading,
    required TResult Function(AppError error) failure,
  }) {
    return loaded(offers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<OfferModel> offers)? loaded,
    TResult Function()? loading,
    TResult Function(AppError error)? failure,
  }) {
    return loaded?.call(offers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OfferModel> offers)? loaded,
    TResult Function()? loading,
    TResult Function(AppError error)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(offers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends OfferListState {
  const factory _Loaded({required List<OfferModel> offers}) = _$_Loaded;
  const _Loaded._() : super._();

  List<OfferModel> get offers;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$OfferListStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'OfferListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OfferModel> offers) loaded,
    required TResult Function() loading,
    required TResult Function(AppError error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<OfferModel> offers)? loaded,
    TResult Function()? loading,
    TResult Function(AppError error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OfferModel> offers)? loaded,
    TResult Function()? loading,
    TResult Function(AppError error)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends OfferListState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({AppError error});

  $AppErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$OfferListStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }

  @override
  $AppErrorCopyWith<$Res> get error {
    return $AppErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error({required this.error}) : super._();

  @override
  final AppError error;

  @override
  String toString() {
    return 'OfferListState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Error &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OfferModel> offers) loaded,
    required TResult Function() loading,
    required TResult Function(AppError error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<OfferModel> offers)? loaded,
    TResult Function()? loading,
    TResult Function(AppError error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OfferModel> offers)? loaded,
    TResult Function()? loading,
    TResult Function(AppError error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Error extends OfferListState {
  const factory _Error({required AppError error}) = _$_Error;
  const _Error._() : super._();

  AppError get error;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
