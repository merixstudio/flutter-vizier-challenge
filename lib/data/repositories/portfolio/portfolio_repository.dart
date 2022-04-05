import 'package:vizier/data/models/company_asset/company_asset_model.dart';
import 'package:vizier/data/models/company_listing/details/company_listing_details_item_model.dart';
import 'package:vizier/data/models/company_listing/history/company_listing_history_model.dart';
import 'package:vizier/data/models/portfolio_overview/portfolio_overview_model.dart';
import 'package:vizier/data/responses/response_status.dart';

abstract class PortfolioRepository {
  Future<ResponseStatus<List<CompanyAssetModel>>> watchlist();
  Future<ResponseStatus<PortfolioOverviewModel>> overview();
  Future<ResponseStatus<List<CompanyListingDetailsItemModel>>> details();
  Future<ResponseStatus<CompanyListingHistoryModel>> history({
    required CompanyAssetModel companyAsset,
    required int daysBack,
  });
}
