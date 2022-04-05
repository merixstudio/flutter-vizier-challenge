import 'package:vizier/data/models/finances_overview/finances_overview_model.dart';
import 'package:vizier/data/models/financial_history/financial_history_model.dart';
import 'package:vizier/data/models/retirement_plan/retirement_plan_model.dart';
import 'package:vizier/data/responses/response_status.dart';

abstract class FinancesRepository {
  Future<ResponseStatus<FinancesOverviewModel>> overview();
  Future<ResponseStatus<FinancialHistoryModel>> history({
    required int daysBack,
  });
  Future<ResponseStatus<RetirementPlanModel>> retirementPlan({
    required int daysTo,
  });
}
