// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retirement_plan_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RetirementPlanDataModel _$$_RetirementPlanDataModelFromJson(Map json) =>
    _$_RetirementPlanDataModel(
      date: DateTime.parse(json['date'] as String),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$_RetirementPlanDataModelToJson(
        _$_RetirementPlanDataModel instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'value': instance.value,
    };
