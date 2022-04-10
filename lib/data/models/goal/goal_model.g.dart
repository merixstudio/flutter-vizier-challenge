// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GoalModel _$$_GoalModelFromJson(Map json) => _$_GoalModel(
      name: json['name'] as String,
      goal: (json['goal'] as num).toDouble(),
      change: (json['change'] as num).toDouble(),
      reached: json['reached'] as int,
    );

Map<String, dynamic> _$$_GoalModelToJson(_$_GoalModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'goal': instance.goal,
      'change': instance.change,
      'reached': instance.reached,
    };
