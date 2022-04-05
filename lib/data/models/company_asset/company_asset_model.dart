import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vizier/extensions/extensions.dart';

part 'company_asset_model.g.dart';
part 'company_asset_model.freezed.dart';

@freezed
class CompanyAssetModel with _$CompanyAssetModel {
  const factory CompanyAssetModel({
    required String shortName,
    required String name,
    required String logo,
    required double currentValue,
    required double changePercentage,
  }) = _CompanyAssetModel;

  const CompanyAssetModel._();

  factory CompanyAssetModel.fromJson(Map<String, dynamic> json) => _$CompanyAssetModelFromJson(json);

  String get fullName => [shortName, name].where((element) => element.isNotBlank).join(' ');
}
