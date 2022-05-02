part of 'mock_factory.dart';

class _FinancesMocks {
  final DummyUtil dummyUtil;
  final double cashBalance;
  final DateTime currentDate;
  final double initialWalletBalance;

  _FinancesMocks({
    required this.dummyUtil,
    required this.cashBalance,
    required this.currentDate,
    required this.initialWalletBalance,
  });

  FinancesOverviewModel prepareOverview() {
    return FinancesOverviewModel(
      cashBalance: cashBalance,
      spent: dummyUtil.randomDouble(
        minNumber: 1,
        maxNumber: 300,
      ),
      since: DateTime(currentDate.year, currentDate.month),
    );
  }

  FinancialHistoryModel prepareHistory({
    required int daysBack,
  }) {
    final List<FinancialHistoryDataModel> history;
    switch (daysBack) {
      case DateTime.daysPerWeek:
        history = _generateHistory(7, daysBack);
        break;
      default:
        history = _generateHistory(5, daysBack);
    }
    return FinancialHistoryModel(
      daysBack: daysBack,
      history: history,
      from: currentDate.subtract(
        _DurationFactory.instance.standard(daysBack),
      ),
      to: currentDate,
    );
  }

  RetirementPlanModel prepareRetirementPlan({
    required int daysTo,
  }) {
    final List<RetirementPlanDataModel> data;
    switch (daysTo) {
      case DateTime.daysPerWeek:
        data = _generateRetirementData(
          7,
          currentDate,
          currentDate.add(
            const Duration(
              days: 6,
            ),
          ),
        );
        break;
      case DateTime.monthsPerYear:
        data = _generateRetirementData(
          5,
          currentDate,
          currentDate.add(
            const Duration(
              days: 30,
            ),
          ),
        );
        break;
      case DateTime.monthsPerYear * 30:
        data = data = _generateRetirementData(
          5,
          currentDate,
          currentDate.add(
            const Duration(
              days: 4 * 365,
            ),
          ),
        );
        break;
      default:
        data = data = _generateRetirementData(
          5,
          currentDate,
          currentDate.add(
            const Duration(
              days: 4 * 365,
            ),
          ),
        );
    }
    return RetirementPlanModel(
      data: data,
      from: currentDate,
      to: currentDate.add(_DurationFactory.instance.standard(daysTo)),
    );
  }
}

extension /*Retirement Plan Data tools*/ on _FinancesMocks {
  List<RetirementPlanDataModel> _generateRetirementData(int count, DateTime from, DateTime to) {
    final int frequency = (to.millisecondsSinceEpoch - from.millisecondsSinceEpoch) ~/ (count - 1);
    return List.generate(
      count,
      (index) => RetirementPlanDataModel(
        date: currentDate.add(
          Duration(
            milliseconds: index * frequency,
          ),
        ),
        value: index == 0
            ? cashBalance
            : dummyUtil.randomDouble(
                maxNumber: initialWalletBalance.toInt(),
              ),
      ),
    );
  }
}

extension /*Financial History Data tools*/ on _FinancesMocks {
  List<FinancialHistoryDataModel> _generateHistory(int count, int daysBack) {
    return List.generate(
      count,
      (index) => FinancialHistoryDataModel(
        date: currentDate.subtract(
          _DurationFactory.instance.indexBased(daysBack, index),
        ),
        balance: index == 0
            ? cashBalance
            : dummyUtil.randomDouble(
                maxNumber: initialWalletBalance.toInt(),
              ),
        spent: dummyUtil.randomDouble(
          maxNumber: initialWalletBalance.toInt(),
        ),
      ),
    );
  }
}
