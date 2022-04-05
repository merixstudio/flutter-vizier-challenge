import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/errors/app_error.dart';
import 'package:vizier/data/models/company_asset/company_asset_model.dart';
import 'package:vizier/data/models/company_listing/history/company_listing_history_model.dart';
import 'package:vizier/data/repositories/portfolio/portfolio_repository.dart';
import 'package:vizier/data/responses/response_status.dart';

part 'company_listing_history_state.dart';
part 'company_listing_history_cubit.freezed.dart';

@injectable
class CompanyListingHistoryCubit extends Cubit<CompanyListingHistoryState> {
  final PortfolioRepository portfolioRepository;

  final Map<int, CompanyListingHistoryModel> _cachedData = {};

  CompanyListingHistoryCubit({
    required this.portfolioRepository,
  }) : super(const CompanyListingHistoryState.initial());

  Future<void> fetchData({
    required CompanyAssetModel companyAsset,
    required int daysBack,
  }) async {
    if (_cachedData.containsKey(daysBack)) {
      emit(
        CompanyListingHistoryState.loaded(
          companyListingHistoryModel: _cachedData[daysBack]!,
        ),
      );
      return;
    }
    emit(
      const CompanyListingHistoryState.loading(),
    );

    final ResponseStatus<CompanyListingHistoryModel> response = await portfolioRepository.history(
      companyAsset: companyAsset,
      daysBack: daysBack,
    );
    response.result(
      onSuccess: (data) {
        _cachedData[daysBack] = data;
        emit(
          CompanyListingHistoryState.loaded(
            companyListingHistoryModel: data,
          ),
        );
      },
      onError: (error) => emit(
        CompanyListingHistoryState.failure(
          error: error,
        ),
      ),
    );
  }
}
