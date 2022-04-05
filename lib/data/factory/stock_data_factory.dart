import 'dart:math';
import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/data/models/account/breakdown/account_breakdown_model.dart';
import 'package:vizier/data/models/company_listing/history/company_listing_history_model.dart';
import 'package:vizier/data/models/company_listing/history/data/company_listing_history_data_model.dart';
import 'package:vizier/data/models/financial_history/financial_history_model.dart';
import 'package:vizier/data/models/financial_history/history_data/financial_history_data_model.dart';
import 'package:vizier/data/models/retirement_plan/data/retirement_plan_data_model.dart';
import 'package:vizier/data/models/retirement_plan/retirement_plan_model.dart';
import 'package:vizier/data/models/transaction/category/transaction_category_model.dart';
import 'package:vizier/extensions/extensions.dart';
import 'package:vizier/ui/widgets/stock/models/axis/stock_data_axis.dart';
import 'package:vizier/ui/widgets/stock/models/data/stock_data.dart';
import 'package:vizier/ui/widgets/stock/models/item/stock_data_item.dart';
import 'package:vizier/utils/currency_formatter_util.dart';

class StockDataFactory {
  const StockDataFactory._();

  static List<StockDataMultiPieItem> fromAccountBreakdownModel(AccountBreakdownModel accountBreakdown) {
    final List<TransactionCategoryModel> transactionCategories = accountBreakdown.transactionCategories
      ..sort(
        (a, b) => b.value.compareTo(a.value),
      );

    return [
      if (transactionCategories.length > 2)
        StockDataMultiPieItem(
          items: _pieChartDataFromTransactionCategories(
            transactionCategories.take(2).toList(),
          ),
        ),
      StockDataMultiPieItem(
        items: _pieChartDataFromTransactionCategories(
          transactionCategories.toList(),
        ),
      ),
    ];
  }

  static List<StockDataPieItem> _pieChartDataFromTransactionCategories(
    List<TransactionCategoryModel> transactionCategories,
  ) {
    return transactionCategories
        .map(
          (e) => StockDataPieItem(
            color: Color(
              int.parse(
                e.colorHex,
                radix: 16,
              ),
            ),
            name: e.name,
            amount: e.value,
            tooltipAmount: CurrencyFormatterUtil.instance.format(
              value: e.value,
            ),
          ),
        )
        .toList();
  }

  static StockMultiPieData fromStockDataMultiPieItemList({
    required List<StockDataMultiPieItem> items,
    required String title,
    required String content,
  }) {
    return StockMultiPieData(
      content: content,
      items: items
          .map(
            (e) => StockDataMultiPieItem(
              items: e.items
                  .map(
                    (e) => StockDataPieItem(
                      amount: e.amount,
                      color: e.color,
                      name: e.name,
                      tooltipAmount: CurrencyFormatterUtil.instance.format(
                        value: e.amount,
                      ),
                    ),
                  )
                  .toList(),
            ),
          )
          .toList(),
      title: title,
    );
  }

  static StockMultiBarData fromFinancialHistoryModel(FinancialHistoryModel model) {
    final List<FinancialHistoryDataModel> items = model.history
      ..sort(
        (a, b) => a.date.compareTo(b.date),
      );
    final double highest = items.highestBalanceOrSpent;
    final double maxY = highest.ceilTo(_getCeil(highest));
    return StockMultiBarData(
      items: items
          .mapIndexed(
            (index, element) => _fromFinancialHistoryDataModel(element, index.toDouble()),
          )
          .toList(),
      x: StockDataAxis(
        items: items
            .mapIndexed(
              (index, element) => StockDataAxisItem(
                label: _getLabelAxisX(model.daysBack, element.date),
                value: index.toDouble(),
              ),
            )
            .toList(),
        min: 0.0,
        max: items.isNotEmpty ? (items.length - 1).toDouble() : 0.0,
      ),
      y: StockDataAxis(
        items: List.generate(
          5,
          (index) {
            final double value = (maxY / 4.0) * index;
            return StockDataAxisItem(
              label: value.formatUnits,
              value: value,
            );
          },
        ),
        min: 0.0,
        max: maxY,
      ),
    );
  }

  static StockCandleData fromPortfolioCurrenciesHistoryModel(CompanyListingHistoryModel model) {
    final List<CompanyListingHistoryDataModel> items = model.history.sortedByDate();
    final double highest = items.highestValues;
    final double lowest = items.lowestValues;
    final double maxY = highest.ceilTo(_getCeil(highest));
    return StockCandleData(
      items: items.map(_fromPortfolioCurrenciesHistoryDataModel).toList(),
      x: StockDataAxis(
        items: _generateAxisXItemsByPortfolioCurrencies(
          items: items,
          daysBack: model.daysBack,
        ),
        min: model.from.millisecondsSinceEpoch.toDouble(),
        max: model.to.millisecondsSinceEpoch.toDouble(),
      ),
      y: StockDataAxis(
        items: List.generate(
          5,
          (index) {
            final double value = ((maxY - lowest) / 4.0) * index + lowest;
            return StockDataAxisItem(
              label: value == 0 ? '' : value.toInt().toString(),
              value: value,
            );
          },
        ),
        min: lowest,
        max: maxY,
      ),
    );
  }

  static StockLineData fromRetirementPlanModel(
    RetirementPlanModel retirementPlanModel, {
    required int daysTo,
  }) {
    final List<RetirementPlanDataModel> items = retirementPlanModel.data
      ..sort(
        (a, b) => a.date.compareTo(b.date),
      );
    final double maxY = items
        .map(
          (e) => e.value,
        )
        .reduce(max);
    return StockLineData(
      items: items
          .map(
            (e) => _prepareToStockDataLineItem(e.value, e.date.day.toDouble()),
          )
          .toList(),
      x: StockDataAxis(
        items: items
            .mapIndexed(
              (index, element) => StockDataAxisItem(
                label: _getLabelAxisX(daysTo, element.date),
                value: index.toDouble(),
              ),
            )
            .toList(),
        min: 0.0,
        max: items.isNotEmpty ? (items.length - 1).toDouble() : 0.0,
      ),
      y: StockDataAxis(
        items: List.generate(
          5,
          (index) {
            final double value = (maxY / 4.0) * index;
            return StockDataAxisItem(
              label: value.formatUnits,
              value: value,
            );
          },
        ),
        min: 0.0,
        max: maxY,
      ),
    );
  }

  static int _getCeil(double value) {
    final String v = value.toInt().toString();
    final StringBuffer buffer = StringBuffer()..write('1');
    for (int i = 0; i < v.length - 2; i++) {
      buffer.write('0');
    }
    return int.tryParse(buffer.toString()) ?? 1;
  }

  static String _getLabelAxisX(int day, DateTime dateTime) {
    switch (day) {
      case DateTime.daysPerWeek:
        return dateTime.day.toString();
      case DateTime.monthsPerYear:
      case DateTime.monthsPerYear * 30:
        return '${dateTime.day}/${dateTime.month}';
      default:
        return dateTime.year.toString();
    }
  }

  static StockDataMultiBarItem _fromFinancialHistoryDataModel(FinancialHistoryDataModel model, double x) {
    return StockDataMultiBarItem(
      items: [
        StockDataBarItem(
          color: AppColors.primary100,
          tooltip: CurrencyFormatterUtil.instance.format(
            value: model.balance,
          ),
          value: model.balance,
          x: x,
        ),
        StockDataBarItem(
          color: AppColors.error300,
          tooltip: CurrencyFormatterUtil.instance.format(
            value: model.spent,
          ),
          value: model.spent,
          x: x,
        ),
      ],
      x: x,
    );
  }

  static StockDataCandleItem _fromPortfolioCurrenciesHistoryDataModel(CompanyListingHistoryDataModel model) {
    return StockDataCandleItem(
      color: model.isProfit ? AppColors.success100 : AppColors.error300,
      value1: StockDataCandleItemValue(
        max: model.value1.max,
        min: model.value1.min,
      ),
      value2: StockDataCandleItemValue(
        max: model.value2.max,
        min: model.value2.min,
      ),
      x: model.date.millisecondsSinceEpoch.toDouble(),
    );
  }

  static StockDataLineItem _prepareToStockDataLineItem(double value, double x) {
    return StockDataLineItem(
      tooltip: CurrencyFormatterUtil.instance.format(
        value: value,
      ),
      value: value,
      color: AppColors.primary100,
      x: x,
    );
  }

  static List<StockDataAxisItem> _generateAxisXItemsByPortfolioCurrencies({
    required List<CompanyListingHistoryDataModel> items,
    required int daysBack,
  }) {
    final List<StockDataAxisItem> newItems = [];
    for (int i = 0; i < items.length; i += 3) {
      newItems.add(
        StockDataAxisItem(
          label: _getLabelAxisX(daysBack, items[i].date),
          value: items[i].date.millisecondsSinceEpoch.toDouble(),
        ),
      );
    }
    return newItems;
  }
}
