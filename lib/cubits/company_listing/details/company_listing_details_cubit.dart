import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/errors/app_error.dart';
import 'package:vizier/data/models/company_asset/company_asset_model.dart';
import 'package:vizier/data/models/company_listing/details/company_listing_details_item_model.dart';
import 'package:vizier/data/repositories/portfolio/portfolio_repository.dart';
import 'package:vizier/data/responses/response_status.dart';

part 'company_listing_details_state.dart';
part 'company_listing_details_cubit.freezed.dart';

@injectable
class CompanyListingDetailsCubit extends Cubit<CompanyListingDetailsState> {
  final PortfolioRepository portfolioRepository;

  CompanyListingDetailsCubit({
    required this.portfolioRepository,
  }) : super(const CompanyListingDetailsState.initial());

  Future<void> fetchData({
    required CompanyAssetModel companyAsset,
  }) async {
    emit(
      const CompanyListingDetailsState.loading(),
    );

    final ResponseStatus<List<CompanyListingDetailsItemModel>> response = await portfolioRepository.details();
    response.result(
      onSuccess: (data) => emit(
        CompanyListingDetailsState.loaded(
          details: data,
        ),
      ),
      onError: (error) => emit(
        CompanyListingDetailsState.failure(
          error: error,
        ),
      ),
    );
  }
}
