// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account_financial_breakdown_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AccountFinancialBreakdownStateTearOff {
  const _$AccountFinancialBreakdownStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(
      {required DateTime from,
      required DateTime to,
      required List<StockDataMultiPieItem> sections,
      required List<TransactionCategoryModel> transactionCategories}) {
    return _Loaded(
      from: from,
      to: to,
      sections: sections,
      transactionCategories: transactionCategories,
    );
  }

  _Failure failure({required AppError appError}) {
    return _Failure(
      appError: appError,
    );
  }
}

/// @nodoc
const $AccountFinancialBreakdownState =
    _$AccountFinancialBreakdownStateTearOff();

/// @nodoc
mixin _$AccountFinancialBreakdownState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            DateTime from,
            DateTime to,
            List<StockDataMultiPieItem> sections,
            List<TransactionCategoryModel> transactionCategories)
        loaded,
    required TResult Function(AppError appError) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DateTime from,
            DateTime to,
            List<StockDataMultiPieItem> sections,
            List<TransactionCategoryModel> transactionCategories)?
        loaded,
    TResult Function(AppError appError)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DateTime from,
            DateTime to,
            List<StockDataMultiPieItem> sections,
            List<TransactionCategoryModel> transactionCategories)?
        loaded,
    TResult Function(AppError appError)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountFinancialBreakdownStateCopyWith<$Res> {
  factory $AccountFinancialBreakdownStateCopyWith(
          AccountFinancialBreakdownState value,
          $Res Function(AccountFinancialBreakdownState) then) =
      _$AccountFinancialBreakdownStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AccountFinancialBreakdownStateCopyWithImpl<$Res>
    implements $AccountFinancialBreakdownStateCopyWith<$Res> {
  _$AccountFinancialBreakdownStateCopyWithImpl(this._value, this._then);

  final AccountFinancialBreakdownState _value;
  // ignore: unused_field
  final $Res Function(AccountFinancialBreakdownState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AccountFinancialBreakdownStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'AccountFinancialBreakdownState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            DateTime from,
            DateTime to,
            List<StockDataMultiPieItem> sections,
            List<TransactionCategoryModel> transactionCategories)
        loaded,
    required TResult Function(AppError appError) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DateTime from,
            DateTime to,
            List<StockDataMultiPieItem> sections,
            List<TransactionCategoryModel> transactionCategories)?
        loaded,
    TResult Function(AppError appError)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DateTime from,
            DateTime to,
            List<StockDataMultiPieItem> sections,
            List<TransactionCategoryModel> transactionCategories)?
        loaded,
    TResult Function(AppError appError)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends AccountFinancialBreakdownState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$AccountFinancialBreakdownStateCopyWithImpl<$Res>
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
    return 'AccountFinancialBreakdownState.loading()';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            DateTime from,
            DateTime to,
            List<StockDataMultiPieItem> sections,
            List<TransactionCategoryModel> transactionCategories)
        loaded,
    required TResult Function(AppError appError) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DateTime from,
            DateTime to,
            List<StockDataMultiPieItem> sections,
            List<TransactionCategoryModel> transactionCategories)?
        loaded,
    TResult Function(AppError appError)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DateTime from,
            DateTime to,
            List<StockDataMultiPieItem> sections,
            List<TransactionCategoryModel> transactionCategories)?
        loaded,
    TResult Function(AppError appError)? failure,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends AccountFinancialBreakdownState {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call(
      {DateTime from,
      DateTime to,
      List<StockDataMultiPieItem> sections,
      List<TransactionCategoryModel> transactionCategories});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$AccountFinancialBreakdownStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? from = freezed,
    Object? to = freezed,
    Object? sections = freezed,
    Object? transactionCategories = freezed,
  }) {
    return _then(_Loaded(
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTime,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sections: sections == freezed
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<StockDataMultiPieItem>,
      transactionCategories: transactionCategories == freezed
          ? _value.transactionCategories
          : transactionCategories // ignore: cast_nullable_to_non_nullable
              as List<TransactionCategoryModel>,
    ));
  }
}

/// @nodoc

class _$_Loaded extends _Loaded {
  const _$_Loaded(
      {required this.from,
      required this.to,
      required this.sections,
      required this.transactionCategories})
      : super._();

  @override
  final DateTime from;
  @override
  final DateTime to;
  @override
  final List<StockDataMultiPieItem> sections;
  @override
  final List<TransactionCategoryModel> transactionCategories;

  @override
  String toString() {
    return 'AccountFinancialBreakdownState.loaded(from: $from, to: $to, sections: $sections, transactionCategories: $transactionCategories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.from, from) &&
            const DeepCollectionEquality().equals(other.to, to) &&
            const DeepCollectionEquality().equals(other.sections, sections) &&
            const DeepCollectionEquality()
                .equals(other.transactionCategories, transactionCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(from),
      const DeepCollectionEquality().hash(to),
      const DeepCollectionEquality().hash(sections),
      const DeepCollectionEquality().hash(transactionCategories));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            DateTime from,
            DateTime to,
            List<StockDataMultiPieItem> sections,
            List<TransactionCategoryModel> transactionCategories)
        loaded,
    required TResult Function(AppError appError) failure,
  }) {
    return loaded(from, to, sections, transactionCategories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DateTime from,
            DateTime to,
            List<StockDataMultiPieItem> sections,
            List<TransactionCategoryModel> transactionCategories)?
        loaded,
    TResult Function(AppError appError)? failure,
  }) {
    return loaded?.call(from, to, sections, transactionCategories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DateTime from,
            DateTime to,
            List<StockDataMultiPieItem> sections,
            List<TransactionCategoryModel> transactionCategories)?
        loaded,
    TResult Function(AppError appError)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(from, to, sections, transactionCategories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends AccountFinancialBreakdownState {
  const factory _Loaded(
          {required DateTime from,
          required DateTime to,
          required List<StockDataMultiPieItem> sections,
          required List<TransactionCategoryModel> transactionCategories}) =
      _$_Loaded;
  const _Loaded._() : super._();

  DateTime get from;
  DateTime get to;
  List<StockDataMultiPieItem> get sections;
  List<TransactionCategoryModel> get transactionCategories;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({AppError appError});

  $AppErrorCopyWith<$Res> get appError;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res>
    extends _$AccountFinancialBreakdownStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? appError = freezed,
  }) {
    return _then(_Failure(
      appError: appError == freezed
          ? _value.appError
          : appError // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }

  @override
  $AppErrorCopyWith<$Res> get appError {
    return $AppErrorCopyWith<$Res>(_value.appError, (value) {
      return _then(_value.copyWith(appError: value));
    });
  }
}

/// @nodoc

class _$_Failure extends _Failure {
  const _$_Failure({required this.appError}) : super._();

  @override
  final AppError appError;

  @override
  String toString() {
    return 'AccountFinancialBreakdownState.failure(appError: $appError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            const DeepCollectionEquality().equals(other.appError, appError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(appError));

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            DateTime from,
            DateTime to,
            List<StockDataMultiPieItem> sections,
            List<TransactionCategoryModel> transactionCategories)
        loaded,
    required TResult Function(AppError appError) failure,
  }) {
    return failure(appError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DateTime from,
            DateTime to,
            List<StockDataMultiPieItem> sections,
            List<TransactionCategoryModel> transactionCategories)?
        loaded,
    TResult Function(AppError appError)? failure,
  }) {
    return failure?.call(appError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DateTime from,
            DateTime to,
            List<StockDataMultiPieItem> sections,
            List<TransactionCategoryModel> transactionCategories)?
        loaded,
    TResult Function(AppError appError)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(appError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure extends AccountFinancialBreakdownState {
  const factory _Failure({required AppError appError}) = _$_Failure;
  const _Failure._() : super._();

  AppError get appError;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
