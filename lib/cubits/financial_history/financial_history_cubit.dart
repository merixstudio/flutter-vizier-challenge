import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/errors/app_error.dart';
import 'package:vizier/data/models/financial_history/financial_history_model.dart';
import 'package:vizier/data/repositories/finances/finances_repository.dart';
import 'package:vizier/data/responses/response_status.dart';

part 'financial_history_state.dart';
part 'financial_history_cubit.freezed.dart';

@injectable
class FinancialHistoryCubit extends Cubit<FinancialHistoryState> {
  final FinancesRepository financesRepository;

  final Map<int, FinancialHistoryModel> _cachedData = {};

  FinancialHistoryCubit({
    required this.financesRepository,
  }) : super(const FinancialHistoryState.initial());

  Future<void> fetchData({
    required int daysBack,
  }) async {
    if (_cachedData.containsKey(daysBack)) {
      emit(
        FinancialHistoryState.loaded(
          financialHistory: _cachedData[daysBack]!,
        ),
      );
      return;
    }
    emit(
      const FinancialHistoryState.loading(),
    );

    final ResponseStatus<FinancialHistoryModel> response = await financesRepository.history(
      daysBack: daysBack,
    );
    response.result(
      onSuccess: (data) {
        _cachedData[daysBack] = data;
        emit(
          FinancialHistoryState.loaded(
            financialHistory: data,
          ),
        );
      },
      onError: (error) => emit(
        FinancialHistoryState.failure(
          error: error,
        ),
      ),
    );
  }
}
