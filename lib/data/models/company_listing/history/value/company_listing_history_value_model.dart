import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_listing_history_value_model.g.dart';
part 'company_listing_history_value_model.freezed.dart';

@freezed
class CompanyListingHistoryValueModel with _$CompanyListingHistoryValueModel {
  const factory CompanyListingHistoryValueModel({
    required double min,
    required double max,
  }) = _CompanyListingHistoryValueModel;

  const CompanyListingHistoryValueModel._();

  factory CompanyListingHistoryValueModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyListingHistoryValueModelFromJson(json);
}
