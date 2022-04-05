part of 'goals_cubit.dart';

@freezed
class GoalsState with _$GoalsState {
  const factory GoalsState.initial() = _Initial;
  const factory GoalsState.loading() = _Loading;
  const factory GoalsState.loaded({
    required List<GoalModel> goals,
  }) = _Loaded;
  const factory GoalsState.failure({
    required AppError error,
  }) = _Failure;
}
