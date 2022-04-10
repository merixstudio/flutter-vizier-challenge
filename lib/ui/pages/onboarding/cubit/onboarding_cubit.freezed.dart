// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboarding_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OnboardingStateTearOff {
  const _$OnboardingStateTearOff();

  _OnboardingState call(
      {required bool firstTimeOpened, required int currentPage}) {
    return _OnboardingState(
      firstTimeOpened: firstTimeOpened,
      currentPage: currentPage,
    );
  }
}

/// @nodoc
const $OnboardingState = _$OnboardingStateTearOff();

/// @nodoc
mixin _$OnboardingState {
  bool get firstTimeOpened => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingStateCopyWith<OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingStateCopyWith<$Res> {
  factory $OnboardingStateCopyWith(
          OnboardingState value, $Res Function(OnboardingState) then) =
      _$OnboardingStateCopyWithImpl<$Res>;
  $Res call({bool firstTimeOpened, int currentPage});
}

/// @nodoc
class _$OnboardingStateCopyWithImpl<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  _$OnboardingStateCopyWithImpl(this._value, this._then);

  final OnboardingState _value;
  // ignore: unused_field
  final $Res Function(OnboardingState) _then;

  @override
  $Res call({
    Object? firstTimeOpened = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_value.copyWith(
      firstTimeOpened: firstTimeOpened == freezed
          ? _value.firstTimeOpened
          : firstTimeOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$OnboardingStateCopyWith<$Res>
    implements $OnboardingStateCopyWith<$Res> {
  factory _$OnboardingStateCopyWith(
          _OnboardingState value, $Res Function(_OnboardingState) then) =
      __$OnboardingStateCopyWithImpl<$Res>;
  @override
  $Res call({bool firstTimeOpened, int currentPage});
}

/// @nodoc
class __$OnboardingStateCopyWithImpl<$Res>
    extends _$OnboardingStateCopyWithImpl<$Res>
    implements _$OnboardingStateCopyWith<$Res> {
  __$OnboardingStateCopyWithImpl(
      _OnboardingState _value, $Res Function(_OnboardingState) _then)
      : super(_value, (v) => _then(v as _OnboardingState));

  @override
  _OnboardingState get _value => super._value as _OnboardingState;

  @override
  $Res call({
    Object? firstTimeOpened = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_OnboardingState(
      firstTimeOpened: firstTimeOpened == freezed
          ? _value.firstTimeOpened
          : firstTimeOpened // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OnboardingState extends _OnboardingState {
  _$_OnboardingState({required this.firstTimeOpened, required this.currentPage})
      : super._();

  @override
  final bool firstTimeOpened;
  @override
  final int currentPage;

  @override
  String toString() {
    return 'OnboardingState(firstTimeOpened: $firstTimeOpened, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnboardingState &&
            const DeepCollectionEquality()
                .equals(other.firstTimeOpened, firstTimeOpened) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstTimeOpened),
      const DeepCollectionEquality().hash(currentPage));

  @JsonKey(ignore: true)
  @override
  _$OnboardingStateCopyWith<_OnboardingState> get copyWith =>
      __$OnboardingStateCopyWithImpl<_OnboardingState>(this, _$identity);
}

abstract class _OnboardingState extends OnboardingState {
  factory _OnboardingState(
      {required bool firstTimeOpened,
      required int currentPage}) = _$_OnboardingState;
  _OnboardingState._() : super._();

  @override
  bool get firstTimeOpened;
  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$OnboardingStateCopyWith<_OnboardingState> get copyWith =>
      throw _privateConstructorUsedError;
}
