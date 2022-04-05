import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vizier/data/models/company_listing/history/data/company_listing_history_data_model.dart';

part 'company_listing_history_model.g.dart';
part 'company_listing_history_model.freezed.dart';

@freezed
class CompanyListingHistoryModel with _$CompanyListingHistoryModel {
  const factory CompanyListingHistoryModel({
    required List<CompanyListingHistoryDataModel> history,
    required DateTime from,
    required DateTime to,
    required int daysBack,
  }) = _CompanyListingHistoryModel;

  const CompanyListingHistoryModel._();

  factory CompanyListingHistoryModel.fromJson(Map<String, dynamic> json) => _$CompanyListingHistoryModelFromJson(json);
}
