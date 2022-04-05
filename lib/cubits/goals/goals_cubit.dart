import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/errors/app_error.dart';
import 'package:vizier/data/models/goal/goal_model.dart';
import 'package:vizier/data/repositories/wallet/wallet_repository.dart';
import 'package:vizier/data/responses/response_status.dart';

part 'goals_state.dart';
part 'goals_cubit.freezed.dart';

@injectable
class GoalsCubit extends Cubit<GoalsState> {
  final WalletRepository walletRepository;

  GoalsCubit({
    required this.walletRepository,
  }) : super(const GoalsState.initial());

  Future<void> fetchData() async {
    emit(
      const GoalsState.loading(),
    );

    final ResponseStatus<List<GoalModel>> response = await walletRepository.goals();
    response.result(
      onSuccess: (data) => emit(
        GoalsState.loaded(
          goals: data,
        ),
      ),
      onError: (error) => emit(
        GoalsState.failure(
          error: error,
        ),
      ),
    );
  }
}
