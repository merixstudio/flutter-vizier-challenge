import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/errors/app_error.dart';
import 'package:vizier/data/models/retirement_plan/retirement_plan_model.dart';
import 'package:vizier/data/repositories/finances/finances_repository.dart';
import 'package:vizier/data/responses/response_status.dart';

part 'retirement_plan_state.dart';
part 'retirement_plan_cubit.freezed.dart';

@injectable
class RetirementPlanCubit extends Cubit<RetirementPlanState> {
  final FinancesRepository financesRepository;

  final Map<int, RetirementPlanModel> _cachedData = {};

  RetirementPlanCubit({
    required this.financesRepository,
  }) : super(const RetirementPlanState.initial());

  Future<void> fetchData({
    required int daysTo,
  }) async {
    if (_cachedData.containsKey(daysTo)) {
      emit(
        RetirementPlanState.loaded(
          retirementPlan: _cachedData[daysTo]!,
        ),
      );
      return;
    }
    emit(
      const RetirementPlanState.loading(),
    );

    final ResponseStatus<RetirementPlanModel> response = await financesRepository.retirementPlan(
      daysTo: daysTo,
    );
    response.result(
      onSuccess: (data) {
        _cachedData[daysTo] = data;
        emit(
          RetirementPlanState.loaded(
            retirementPlan: data,
          ),
        );
      },
      onError: (error) => emit(
        RetirementPlanState.failure(
          error: error,
        ),
      ),
    );
  }
}
