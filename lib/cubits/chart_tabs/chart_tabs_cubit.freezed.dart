// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chart_tabs_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChartTabsStateTearOff {
  const _$ChartTabsStateTearOff();

  _Tab tab(ChartTab selectedTab) {
    return _Tab(
      selectedTab,
    );
  }
}

/// @nodoc
const $ChartTabsState = _$ChartTabsStateTearOff();

/// @nodoc
mixin _$ChartTabsState {
  ChartTab get selectedTab => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChartTab selectedTab) tab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChartTab selectedTab)? tab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChartTab selectedTab)? tab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tab value) tab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Tab value)? tab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tab value)? tab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChartTabsStateCopyWith<ChartTabsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartTabsStateCopyWith<$Res> {
  factory $ChartTabsStateCopyWith(
          ChartTabsState value, $Res Function(ChartTabsState) then) =
      _$ChartTabsStateCopyWithImpl<$Res>;
  $Res call({ChartTab selectedTab});
}

/// @nodoc
class _$ChartTabsStateCopyWithImpl<$Res>
    implements $ChartTabsStateCopyWith<$Res> {
  _$ChartTabsStateCopyWithImpl(this._value, this._then);

  final ChartTabsState _value;
  // ignore: unused_field
  final $Res Function(ChartTabsState) _then;

  @override
  $Res call({
    Object? selectedTab = freezed,
  }) {
    return _then(_value.copyWith(
      selectedTab: selectedTab == freezed
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as ChartTab,
    ));
  }
}

/// @nodoc
abstract class _$TabCopyWith<$Res> implements $ChartTabsStateCopyWith<$Res> {
  factory _$TabCopyWith(_Tab value, $Res Function(_Tab) then) =
      __$TabCopyWithImpl<$Res>;
  @override
  $Res call({ChartTab selectedTab});
}

/// @nodoc
class __$TabCopyWithImpl<$Res> extends _$ChartTabsStateCopyWithImpl<$Res>
    implements _$TabCopyWith<$Res> {
  __$TabCopyWithImpl(_Tab _value, $Res Function(_Tab) _then)
      : super(_value, (v) => _then(v as _Tab));

  @override
  _Tab get _value => super._value as _Tab;

  @override
  $Res call({
    Object? selectedTab = freezed,
  }) {
    return _then(_Tab(
      selectedTab == freezed
          ? _value.selectedTab
          : selectedTab // ignore: cast_nullable_to_non_nullable
              as ChartTab,
    ));
  }
}

/// @nodoc

class _$_Tab implements _Tab {
  const _$_Tab(this.selectedTab);

  @override
  final ChartTab selectedTab;

  @override
  String toString() {
    return 'ChartTabsState.tab(selectedTab: $selectedTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Tab &&
            const DeepCollectionEquality()
                .equals(other.selectedTab, selectedTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedTab));

  @JsonKey(ignore: true)
  @override
  _$TabCopyWith<_Tab> get copyWith =>
      __$TabCopyWithImpl<_Tab>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChartTab selectedTab) tab,
  }) {
    return tab(selectedTab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChartTab selectedTab)? tab,
  }) {
    return tab?.call(selectedTab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChartTab selectedTab)? tab,
    required TResult orElse(),
  }) {
    if (tab != null) {
      return tab(selectedTab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Tab value) tab,
  }) {
    return tab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Tab value)? tab,
  }) {
    return tab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Tab value)? tab,
    required TResult orElse(),
  }) {
    if (tab != null) {
      return tab(this);
    }
    return orElse();
  }
}

abstract class _Tab implements ChartTabsState {
  const factory _Tab(ChartTab selectedTab) = _$_Tab;

  @override
  ChartTab get selectedTab;
  @override
  @JsonKey(ignore: true)
  _$TabCopyWith<_Tab> get copyWith => throw _privateConstructorUsedError;
}
