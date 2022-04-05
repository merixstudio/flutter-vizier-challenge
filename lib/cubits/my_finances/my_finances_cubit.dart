import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/errors/app_error.dart';
import 'package:vizier/data/models/finances_overview/finances_overview_model.dart';
import 'package:vizier/data/repositories/finances/finances_repository.dart';
import 'package:vizier/data/responses/response_status.dart';

part 'my_finances_state.dart';
part 'my_finances_cubit.freezed.dart';

@injectable
class MyFinancesCubit extends Cubit<MyFinancesState> {
  final FinancesRepository financesRepository;

  MyFinancesCubit({
    required this.financesRepository,
  }) : super(const MyFinancesState.initial());

  Future<void> fetchData() async {
    emit(
      const MyFinancesState.loading(),
    );

    final ResponseStatus<FinancesOverviewModel> response = await financesRepository.overview();
    response.result(
      onSuccess: (data) => emit(
        MyFinancesState.loaded(
          financesOverview: data,
        ),
      ),
      onError: (error) => emit(
        MyFinancesState.failure(
          error: error,
        ),
      ),
    );
  }
}
