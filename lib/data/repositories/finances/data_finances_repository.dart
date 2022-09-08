import 'package:injectable/injectable.dart';
import 'package:vizier/data/data_sources/finances/finances_data_source.dart';
import 'package:vizier/data/models/finances_overview/finances_overview_model.dart';
import 'package:vizier/data/models/financial_history/financial_history_model.dart';
import 'package:vizier/data/models/retirement_plan/retirement_plan_model.dart';
import 'package:vizier/data/repositories/finances/finances_repository.dart';
import 'package:vizier/data/responses/response_status.dart';

@Injectable(as: FinancesRepository)
class DataFinancesRepository extends FinancesRepository {
  final FinancesDataSource financesDataSource;

  DataFinancesRepository({
    required this.financesDataSource,
  });

  @override
  Future<ResponseStatus<FinancesOverviewModel>> overview() async {
    try {
      final ResponseStatus<FinancesOverviewModel> response =
          await financesDataSource.overview();
      return ResponseStatus<FinancesOverviewModel>.success(response.data!);
    } catch (error) {
      return ResponseStatus<FinancesOverviewModel>.error(error);
    }
  }

  @override
  Future<ResponseStatus<FinancialHistoryModel>> history({
    required int daysBack,
  }) async {
    try {
      final ResponseStatus<FinancialHistoryModel> response =
          await financesDataSource.history(
        daysBack: daysBack,
      );
      return ResponseStatus<FinancialHistoryModel>.success(response.data!);
    } catch (error) {
      return ResponseStatus<FinancialHistoryModel>.error(error);
    }
  }

  @override
  Future<ResponseStatus<RetirementPlanModel>> retirementPlan({
    required int daysTo,
  }) async {
    try {
      final ResponseStatus<RetirementPlanModel> response =
          await financesDataSource.retirementPlan(
        daysTo: daysTo,
      );
      return ResponseStatus<RetirementPlanModel>.success(response.data!);
    } catch (error) {
      return ResponseStatus<RetirementPlanModel>.error(error);
    }
  }
}
