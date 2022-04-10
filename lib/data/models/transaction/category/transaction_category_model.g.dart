// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionCategoryModel _$$_TransactionCategoryModelFromJson(Map json) =>
    _$_TransactionCategoryModel(
      colorHex: json['color_hex'] as String,
      name: json['name'] as String,
      value: (json['value'] as num).toDouble(),
      percent: (json['percent'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TransactionCategoryModelToJson(
        _$_TransactionCategoryModel instance) =>
    <String, dynamic>{
      'color_hex': instance.colorHex,
      'name': instance.name,
      'value': instance.value,
      'percent': instance.percent,
    };
