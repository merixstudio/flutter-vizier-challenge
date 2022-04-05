part of 'retirement_plan_cubit.dart';

@freezed
class RetirementPlanState with _$RetirementPlanState {
  const RetirementPlanState._();

  const factory RetirementPlanState.initial() = _Initial;
  const factory RetirementPlanState.loading() = _Loading;
  const factory RetirementPlanState.loaded({
    required RetirementPlanModel retirementPlan,
  }) = _Loaded;
  const factory RetirementPlanState.failure({
    required AppError error,
  }) = _Error;

  bool get isLoading => maybeMap(
        loading: (_) => true,
        orElse: () => false,
      );

  RetirementPlanModel? get retirementPlan => maybeMap(
        loaded: (state) => state.retirementPlan,
        orElse: () => null,
      );
}
