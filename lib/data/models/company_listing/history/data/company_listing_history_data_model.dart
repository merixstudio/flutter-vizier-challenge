import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vizier/data/models/company_listing/history/value/company_listing_history_value_model.dart';

part 'company_listing_history_data_model.g.dart';
part 'company_listing_history_data_model.freezed.dart';

@freezed
class CompanyListingHistoryDataModel with _$CompanyListingHistoryDataModel {
  const factory CompanyListingHistoryDataModel({
    required DateTime date,
    required bool isProfit,
    required CompanyListingHistoryValueModel value1,
    required CompanyListingHistoryValueModel value2,
  }) = _CompanyListingHistoryDataModel;

  double get maxValues => max(max(value1.min, value1.max), max(value2.min, value2.max));

  double get minValues => min(min(value1.min, value2.max), min(value2.min, value2.max));

  const CompanyListingHistoryDataModel._();

  factory CompanyListingHistoryDataModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyListingHistoryDataModelFromJson(json);
}
