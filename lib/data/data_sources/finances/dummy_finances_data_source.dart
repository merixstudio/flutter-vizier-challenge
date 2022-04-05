import 'package:injectable/injectable.dart';
import 'package:vizier/config/constants/app_constants.dart';
import 'package:vizier/data/data_sources/finances/finances_data_source.dart';
import 'package:vizier/data/models/finances_overview/finances_overview_model.dart';
import 'package:vizier/data/models/financial_history/financial_history_model.dart';
import 'package:vizier/data/models/retirement_plan/retirement_plan_model.dart';
import 'package:vizier/data/responses/response_status.dart';
import 'package:vizier/mocks/mock_factory.dart';

@Injectable(as: FinancesDataSource)
class DummyFinancesDataSource extends FinancesDataSource {
  final MockFactory mockFactory;

  DummyFinancesDataSource({
    required this.mockFactory,
  });

  @override
  Future<ResponseStatus<FinancesOverviewModel>> overview() async {
    await Future.delayed(AppConstants.api.dummyLoadingDuration);
    return ResponseStatus.success(
      mockFactory.finances.prepareOverview(),
    );
  }

  @override
  Future<ResponseStatus<FinancialHistoryModel>> history({
    required int daysBack,
  }) async {
    await Future.delayed(AppConstants.api.dummyLoadingDuration);
    return ResponseStatus.success(
      mockFactory.finances.prepareHistory(
        daysBack: daysBack,
      ),
    );
  }

  @override
  Future<ResponseStatus<RetirementPlanModel>> retirementPlan({
    required int daysTo,
  }) async {
    await Future.delayed(AppConstants.api.dummyLoadingDuration);
    return ResponseStatus.success(
      mockFactory.finances.prepareRetirementPlan(
        daysTo: daysTo,
      ),
    );
  }
}
