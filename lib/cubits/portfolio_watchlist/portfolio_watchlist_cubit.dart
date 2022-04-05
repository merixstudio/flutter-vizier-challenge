import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/errors/app_error.dart';
import 'package:vizier/data/models/company_asset/company_asset_model.dart';
import 'package:vizier/data/repositories/portfolio/portfolio_repository.dart';
import 'package:vizier/data/responses/response_status.dart';

part 'portfolio_watchlist_state.dart';
part 'portfolio_watchlist_cubit.freezed.dart';

@injectable
class PortfolioWatchlistCubit extends Cubit<PortfolioWatchlistState> {
  final PortfolioRepository portfolioRepository;

  PortfolioWatchlistCubit({
    required this.portfolioRepository,
  }) : super(const PortfolioWatchlistState.initial());

  Future<void> fetchData() async {
    emit(
      const PortfolioWatchlistState.loading(),
    );

    final ResponseStatus<List<CompanyAssetModel>> response = await portfolioRepository.watchlist();
    response.result(
      onSuccess: (data) => emit(
        PortfolioWatchlistState.loaded(
          companyAssets: data,
        ),
      ),
      onError: (error) => emit(
        PortfolioWatchlistState.failure(
          error: error,
        ),
      ),
    );
  }
}
