part of 'extensions.dart';

extension ListFinancialHistoryDataModelMapper on List<FinancialHistoryDataModel> {
  double get highestBalanceOrSpent =>
      (copy()
            ..sort(
              (a, b) => a.maxBalanceOrSpent.compareTo(b.maxBalanceOrSpent),
            ))
          .lastOrNull
          ?.maxBalanceOrSpent ??
      0.0;

  List<FinancialHistoryDataModel> sortedByDate() => (copy()
    ..sort(
      (a, b) => a.date.compareTo(b.date),
    ));
}

extension ListPortfolioCurrenciesHistoryDataModelMapper on List<CompanyListingHistoryDataModel> {
  double get highestValues =>
      (copy()
            ..sort(
              (a, b) => a.maxValues.compareTo(b.maxValues),
            ))
          .lastOrNull
          ?.maxValues ??
      0.0;

  double get lowestValues =>
      (copy()
            ..sort(
              (a, b) => a.minValues.compareTo(b.minValues),
            ))
          .firstOrNull
          ?.minValues ??
      0.0;

  List<CompanyListingHistoryDataModel> sortedByDate() => (copy()
    ..sort(
      (a, b) => a.date.compareTo(b.date),
    ));
}
