import 'package:injectable/injectable.dart';
import 'package:vizier/config/constants/app_constants.dart';
import 'package:vizier/data/data_sources/portfolio/portfolio_data_source.dart';
import 'package:vizier/data/models/company_asset/company_asset_model.dart';
import 'package:vizier/data/models/company_listing/details/company_listing_details_item_model.dart';
import 'package:vizier/data/models/company_listing/history/company_listing_history_model.dart';
import 'package:vizier/data/models/portfolio_overview/portfolio_overview_model.dart';
import 'package:vizier/data/responses/response_status.dart';
import 'package:vizier/mocks/mock_factory.dart';

@Injectable(as: PortfolioDataSource)
class DummyPortfolioDataSource extends PortfolioDataSource {
  final MockFactory mockFactory;

  DummyPortfolioDataSource({
    required this.mockFactory,
  });

  @override
  Future<ResponseStatus<PortfolioOverviewModel>> overview() async {
    return ResponseStatus.success(
      mockFactory.portfolio.prepareOverview(),
    );
  }

  @override
  Future<ResponseStatus<List<CompanyAssetModel>>> watchlist() async {
    return ResponseStatus.success(
      mockFactory.portfolio.prepareWatchlist(),
    );
  }

  @override
  Future<ResponseStatus<List<CompanyListingDetailsItemModel>>> details() async {
    return ResponseStatus.success(
      mockFactory.portfolio.prepareCompanyListingDetails(),
    );
  }

  @override
  Future<ResponseStatus<CompanyListingHistoryModel>> history({
    required CompanyAssetModel companyAsset,
    required int daysBack,
  }) async {
    await Future.delayed(AppConstants.api.dummyLoadingDuration);
    return ResponseStatus.success(
      mockFactory.portfolio.prepareCompanyListingHistory(
        companyAsset: companyAsset,
        daysBack: daysBack,
      ),
    );
  }
}
