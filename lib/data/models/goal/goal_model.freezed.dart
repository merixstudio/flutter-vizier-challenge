// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'goal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GoalModel _$GoalModelFromJson(Map<String, dynamic> json) {
  return _GoalModel.fromJson(json);
}

/// @nodoc
class _$GoalModelTearOff {
  const _$GoalModelTearOff();

  _GoalModel call(
      {required String name,
      required double goal,
      required double change,
      required int reached}) {
    return _GoalModel(
      name: name,
      goal: goal,
      change: change,
      reached: reached,
    );
  }

  GoalModel fromJson(Map<String, Object?> json) {
    return GoalModel.fromJson(json);
  }
}

/// @nodoc
const $GoalModel = _$GoalModelTearOff();

/// @nodoc
mixin _$GoalModel {
  String get name => throw _privateConstructorUsedError;
  double get goal => throw _privateConstructorUsedError;
  double get change => throw _privateConstructorUsedError;
  int get reached => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoalModelCopyWith<GoalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoalModelCopyWith<$Res> {
  factory $GoalModelCopyWith(GoalModel value, $Res Function(GoalModel) then) =
      _$GoalModelCopyWithImpl<$Res>;
  $Res call({String name, double goal, double change, int reached});
}

/// @nodoc
class _$GoalModelCopyWithImpl<$Res> implements $GoalModelCopyWith<$Res> {
  _$GoalModelCopyWithImpl(this._value, this._then);

  final GoalModel _value;
  // ignore: unused_field
  final $Res Function(GoalModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? goal = freezed,
    Object? change = freezed,
    Object? reached = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      goal: goal == freezed
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as double,
      change: change == freezed
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      reached: reached == freezed
          ? _value.reached
          : reached // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GoalModelCopyWith<$Res> implements $GoalModelCopyWith<$Res> {
  factory _$GoalModelCopyWith(
          _GoalModel value, $Res Function(_GoalModel) then) =
      __$GoalModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, double goal, double change, int reached});
}

/// @nodoc
class __$GoalModelCopyWithImpl<$Res> extends _$GoalModelCopyWithImpl<$Res>
    implements _$GoalModelCopyWith<$Res> {
  __$GoalModelCopyWithImpl(_GoalModel _value, $Res Function(_GoalModel) _then)
      : super(_value, (v) => _then(v as _GoalModel));

  @override
  _GoalModel get _value => super._value as _GoalModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? goal = freezed,
    Object? change = freezed,
    Object? reached = freezed,
  }) {
    return _then(_GoalModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      goal: goal == freezed
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as double,
      change: change == freezed
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      reached: reached == freezed
          ? _value.reached
          : reached // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GoalModel extends _GoalModel {
  const _$_GoalModel(
      {required this.name,
      required this.goal,
      required this.change,
      required this.reached})
      : super._();

  factory _$_GoalModel.fromJson(Map<String, dynamic> json) =>
      _$$_GoalModelFromJson(json);

  @override
  final String name;
  @override
  final double goal;
  @override
  final double change;
  @override
  final int reached;

  @override
  String toString() {
    return 'GoalModel(name: $name, goal: $goal, change: $change, reached: $reached)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoalModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.goal, goal) &&
            const DeepCollectionEquality().equals(other.change, change) &&
            const DeepCollectionEquality().equals(other.reached, reached));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(goal),
      const DeepCollectionEquality().hash(change),
      const DeepCollectionEquality().hash(reached));

  @JsonKey(ignore: true)
  @override
  _$GoalModelCopyWith<_GoalModel> get copyWith =>
      __$GoalModelCopyWithImpl<_GoalModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoalModelToJson(this);
  }
}

abstract class _GoalModel extends GoalModel {
  const factory _GoalModel(
      {required String name,
      required double goal,
      required double change,
      required int reached}) = _$_GoalModel;
  const _GoalModel._() : super._();

  factory _GoalModel.fromJson(Map<String, dynamic> json) =
      _$_GoalModel.fromJson;

  @override
  String get name;
  @override
  double get goal;
  @override
  double get change;
  @override
  int get reached;
  @override
  @JsonKey(ignore: true)
  _$GoalModelCopyWith<_GoalModel> get copyWith =>
      throw _privateConstructorUsedError;
}
