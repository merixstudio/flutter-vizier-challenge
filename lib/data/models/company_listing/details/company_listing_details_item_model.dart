import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_listing_details_item_model.g.dart';
part 'company_listing_details_item_model.freezed.dart';

@freezed
class CompanyListingDetailsItemModel with _$CompanyListingDetailsItemModel {
  const factory CompanyListingDetailsItemModel({
    required String description,
    required String index,
    required String title,
  }) = _CompanyListingDetailsItemModel;

  const CompanyListingDetailsItemModel._();

  factory CompanyListingDetailsItemModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyListingDetailsItemModelFromJson(json);
}
