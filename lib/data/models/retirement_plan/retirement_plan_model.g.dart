// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retirement_plan_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RetirementPlanModel _$$_RetirementPlanModelFromJson(Map json) =>
    _$_RetirementPlanModel(
      data: (json['data'] as List<dynamic>)
          .map((e) => RetirementPlanDataModel.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      from: DateTime.parse(json['from'] as String),
      to: DateTime.parse(json['to'] as String),
    );

Map<String, dynamic> _$$_RetirementPlanModelToJson(
        _$_RetirementPlanModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'from': instance.from.toIso8601String(),
      'to': instance.to.toIso8601String(),
    };
