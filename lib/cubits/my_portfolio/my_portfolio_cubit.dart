import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/errors/app_error.dart';
import 'package:vizier/data/models/portfolio_overview/portfolio_overview_model.dart';
import 'package:vizier/data/repositories/portfolio/portfolio_repository.dart';
import 'package:vizier/data/responses/response_status.dart';

part 'my_portfolio_state.dart';
part 'my_portfolio_cubit.freezed.dart';

@injectable
class MyPortfolioCubit extends Cubit<MyPortfolioState> {
  final PortfolioRepository portfolioRepository;

  MyPortfolioCubit({
    required this.portfolioRepository,
  }) : super(const MyPortfolioState.initial());

  Future<void> fetchData() async {
    emit(
      const MyPortfolioState.loading(),
    );

    final ResponseStatus<PortfolioOverviewModel> response = await portfolioRepository.overview();
    response.result(
      onSuccess: (data) => emit(
        MyPortfolioState.loaded(
          portfolioOverview: data,
        ),
      ),
      onError: (error) => emit(
        MyPortfolioState.failure(
          error: error,
        ),
      ),
    );
  }
}
