import 'package:injectable/injectable.dart';
import 'package:vizier/data/data_sources/portfolio/portfolio_data_source.dart';
import 'package:vizier/data/models/company_asset/company_asset_model.dart';
import 'package:vizier/data/models/company_listing/details/company_listing_details_item_model.dart';
import 'package:vizier/data/models/company_listing/history/company_listing_history_model.dart';
import 'package:vizier/data/models/portfolio_overview/portfolio_overview_model.dart';
import 'package:vizier/data/repositories/portfolio/portfolio_repository.dart';
import 'package:vizier/data/responses/response_status.dart';

@Injectable(as: PortfolioRepository)
class DataPortfolioRepository extends PortfolioRepository {
  final PortfolioDataSource portfolioDataSource;

  DataPortfolioRepository({
    required this.portfolioDataSource,
  });

  @override
  Future<ResponseStatus<PortfolioOverviewModel>> overview() async {
    try {
      final ResponseStatus<PortfolioOverviewModel> response =
          await portfolioDataSource.overview();
      return ResponseStatus<PortfolioOverviewModel>.success(response.data!);
    } catch (error) {
      return ResponseStatus<PortfolioOverviewModel>.error(error);
    }
  }

  @override
  Future<ResponseStatus<List<CompanyAssetModel>>> watchlist() async {
    try {
      final ResponseStatus<List<CompanyAssetModel>> response =
          await portfolioDataSource.watchlist();
      return ResponseStatus<List<CompanyAssetModel>>.success(response.data!);
    } catch (error) {
      return ResponseStatus<List<CompanyAssetModel>>.error(error);
    }
  }

  @override
  Future<ResponseStatus<List<CompanyListingDetailsItemModel>>> details() async {
    try {
      final ResponseStatus<List<CompanyListingDetailsItemModel>> response =
          await portfolioDataSource.details();
      return ResponseStatus.success(response.data!);
    } catch (error) {
      return ResponseStatus<List<CompanyListingDetailsItemModel>>.error(error);
    }
  }

  @override
  Future<ResponseStatus<CompanyListingHistoryModel>> history({
    required CompanyAssetModel companyAsset,
    required int daysBack,
  }) async {
    try {
      final ResponseStatus<CompanyListingHistoryModel> response =
          await portfolioDataSource.history(
        companyAsset: companyAsset,
        daysBack: daysBack,
      );
      return ResponseStatus.success(response.data!);
    } catch (error) {
      return ResponseStatus<CompanyListingHistoryModel>.error(error);
    }
  }
}
