// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionModel _$$_TransactionModelFromJson(Map json) =>
    _$_TransactionModel(
      categoryName: json['category_name'] as String,
      date: DateTime.parse(json['date'] as String),
      name: json['name'] as String,
      value: (json['value'] as num).toDouble(),
      backgroundColorHex: json['background_color_hex'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_TransactionModelToJson(_$_TransactionModel instance) =>
    <String, dynamic>{
      'category_name': instance.categoryName,
      'date': instance.date.toIso8601String(),
      'name': instance.name,
      'value': instance.value,
      'background_color_hex': instance.backgroundColorHex,
      'image': instance.image,
    };
