import 'dart:math';
import 'package:chart/models/axis/chart_axis_layer.dart';
import 'package:chart/models/candle/chart_candle_layer.dart';
import 'package:chart/models/chart_layer.dart';
import 'package:chart/models/grid/chart_grid_layer.dart';
import 'package:chart/models/group/bar/chart_group_bar_layer.dart';
import 'package:chart/models/group/pie/chart_group_pie_layer.dart';
import 'package:chart/models/highlight/chart_highlight_layer.dart';
import 'package:chart/models/highlight/shape/chart_highlight_shape.dart';
import 'package:chart/models/line/chart_line_layer.dart';
import 'package:chart/models/tooltip/chart_tooltip_layer.dart';
import 'package:chart/models/tooltip/shape/chart_tooltip_shape.dart';
import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/data/models/account/breakdown/account_breakdown_model.dart';
import 'package:vizier/data/models/company_listing/history/company_listing_history_model.dart';
import 'package:vizier/data/models/company_listing/history/data/company_listing_history_data_model.dart';
import 'package:vizier/data/models/financial_history/financial_history_model.dart';
import 'package:vizier/data/models/financial_history/history_data/financial_history_data_model.dart';
import 'package:vizier/data/models/retirement_plan/data/retirement_plan_data_model.dart';
import 'package:vizier/data/models/retirement_plan/retirement_plan_model.dart';
import 'package:vizier/data/models/transaction/category/transaction_category_model.dart';
import 'package:vizier/extensions/extensions.dart';
import 'package:vizier/ui/models/chart_multi_pie_item.dart';
import 'package:vizier/ui/models/chart_multi_pie_section.dart';

class ChartFactory {
  const ChartFactory._();

  static List<ChartMultiPieSection> fromAccountBreakdownModel(AccountBreakdownModel accountBreakdown) {
    final List<TransactionCategoryModel> transactionCategories = accountBreakdown.transactionCategories
      ..sort(
        (a, b) => b.value.compareTo(a.value),
      );

    return [
      if (transactionCategories.length > 2)
        ChartMultiPieSection(
          items: _pieChartDataFromTransactionCategories(
            transactionCategories.take(2).toList(),
          ),
        ),
      ChartMultiPieSection(
        items: _pieChartDataFromTransactionCategories(
          transactionCategories.toList(),
        ),
      ),
    ];
  }

  static List<ChartMultiPieItem> _pieChartDataFromTransactionCategories(
    List<TransactionCategoryModel> transactionCategories,
  ) {
    return transactionCategories
        .map(
          (e) => ChartMultiPieItem(
            color: Color(
              int.parse(
                e.colorHex,
                radix: 16,
              ),
            ),
            name: e.name,
            amount: e.value,
          ),
        )
        .toList();
  }

  static List<ChartLayer> fromFinancialHistoryModel(FinancialHistoryModel model) {
    final List<FinancialHistoryDataModel> items = model.history
      ..sort(
        (a, b) => a.date.compareTo(b.date),
      );
    final double highest = items.highestBalanceOrSpent;
    final double maxY = highest.ceilTo(_getCeil(highest));
    final from = (items.firstOrNull?.date)?.millisecondsSinceEpoch ?? 0.0;
    final to = (items.lastOrNull?.date)?.millisecondsSinceEpoch ?? 0.0;
    final frequency = (to - from) / (model.history.length - 1);
    return [
      ChartAxisLayer(
        settings: ChartAxisSettings(
          x: ChartAxisSettingsAxis(
            frequency: frequency,
            max: to.toDouble(),
            min: from.toDouble(),
            textStyle: AppTextStyles.caption3().copyWith(
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          y: ChartAxisSettingsAxis(
            frequency: maxY / 4.0,
            max: maxY,
            min: 0.0,
            textStyle: AppTextStyles.caption3().copyWith(
              color: AppColors.white60,
            ),
          ),
        ),
        labelX: (value) => _getLabelAxisX(model.daysBack, DateTime.fromMillisecondsSinceEpoch(value.toInt())),
        labelY: (value) => value == 0.0 ? '' : value.formatUnits,
      ),
      ChartGroupBarLayer(
        items: items
            .map(
              (element) => <ChartGroupBarDataItem>[
                ChartGroupBarDataItem(
                  color: AppColors.primary100,
                  value: element.balance,
                  x: element.date.millisecondsSinceEpoch.toDouble(),
                ),
                ChartGroupBarDataItem(
                  color: AppColors.error300,
                  value: element.spent,
                  x: element.date.millisecondsSinceEpoch.toDouble(),
                ),
              ],
            )
            .toList(),
        settings: const ChartGroupBarSettings(
          radius: BorderRadius.all(Radius.circular(4.0)),
          thickness: 8.0,
        ),
      ),
      ChartTooltipLayer(
        shape: () => ChartTooltipBarShape<ChartGroupBarDataItem>(
          backgroundColor: Colors.white,
          currentPos: (item) => item.currentValuePos,
          currentSize: (item) => item.currentValueSize,
          onTextValue: (item) => '€${item.value.toStringAsFixed(2)}',
          marginBottom: 6.0,
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 8.0,
          ),
          radius: 6.0,
          textStyle: AppTextStyles.h6().copyWith(
            color: AppColors.navy,
          ),
        ),
      ),
    ];
  }

  static List<ChartLayer> fromPortfolioCurrenciesHistoryModel(CompanyListingHistoryModel model) {
    final List<CompanyListingHistoryDataModel> items = model.history.sortedByDate();
    final double highest = items.highestValues.ceilTo(_getCeil(items.highestValues));
    final double lowest = items.lowestValues.ceilFrom(_getCeil(items.lowestValues));
    final double from = ((items.firstOrNull?.date)?.millisecondsSinceEpoch)?.toDouble() ?? 0.0;
    final double to = ((items.lastOrNull?.date)?.millisecondsSinceEpoch)?.toDouble() ?? 0.0;
    final frequency = (to - from) / (model.daysBack == DateTime.daysPerWeek ? 6.0 : 4.0);
    return [
      ChartGridLayer(
        settings: ChartGridSettings(
          x: ChartGridSettingsAxis(
            color: AppColors.gray100.withOpacity(0.2),
            frequency: frequency,
            max: model.to.millisecondsSinceEpoch.toDouble(),
            min: model.from.millisecondsSinceEpoch.toDouble(),
          ),
          y: ChartGridSettingsAxis(
            color: AppColors.gray100.withOpacity(0.2),
            frequency: (highest - lowest) / 4.0,
            max: highest,
            min: lowest,
          ),
        ),
      ),
      ChartAxisLayer(
        settings: ChartAxisSettings(
          x: ChartAxisSettingsAxis(
            frequency: frequency,
            max: to,
            min: from,
            textStyle: AppTextStyles.caption3().copyWith(
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          y: ChartAxisSettingsAxis(
            frequency: (highest - lowest) / 4.0,
            max: highest,
            min: lowest,
            textStyle: AppTextStyles.caption3().copyWith(
              color: AppColors.white60,
            ),
          ),
        ),
        labelX: (value) => _getLabelAxisX(model.daysBack, DateTime.fromMillisecondsSinceEpoch(value.toInt())),
        labelY: (value) => value.formatUnits,
      ),
      ChartCandleLayer(
        items: model.history
            .map(
              (element) => ChartCandleDataItem(
                color: element.isProfit ? AppColors.success100 : AppColors.error300,
                value1: ChartCandleDataItemValue(
                  max: element.value1.max,
                  min: element.value1.min,
                ),
                value2: ChartCandleDataItemValue(
                  max: element.value2.max,
                  min: element.value2.min,
                ),
                x: element.date.millisecondsSinceEpoch.toDouble(),
              ),
            )
            .toList(),
        settings: const ChartCandleSettings(),
      ),
    ];
  }

  static List<ChartLayer> fromStockDataMultiPieItemList(List<ChartMultiPieSection> items) {
    return [
      ChartGroupPieLayer(
        items: items
            .map(
              (element) => element.items
                  .map(
                    (element) => ChartGroupPieDataItem(
                      amount: element.amount,
                      color: element.color,
                      label: element.name,
                    ),
                  )
                  .toList(),
            )
            .toList(),
        settings: const ChartGroupPieSettings(
          angleOffset: -65.0,
          gapBetweenChartCircles: 18.0,
        ),
      ),
      ChartTooltipLayer(
        shape: () => ChartTooltipPieShape<ChartGroupPieDataItem>(
          onTextName: (item) => item.label,
          onTextValue: (item) => '€${item.amount.toStringAsFixed(2)}',
          radius: 10.0,
          backgroundColor: Colors.white,
          padding: const EdgeInsets.all(12.0),
          nameTextStyle: AppTextStyles.caption2Bold().copyWith(
            color: AppColors.primary100,
          ),
          valueTextStyle: AppTextStyles.caption2Bold().copyWith(
            color: AppColors.navy,
          ),
        ),
      )
    ];
  }

  static List<ChartLayer> fromRetirementPlanModel(
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
    final from = (items.firstOrNull?.date)?.millisecondsSinceEpoch ?? 0;
    final to = (items.lastOrNull?.date)?.millisecondsSinceEpoch ?? 0;
    final frequency = (to - from) / (retirementPlanModel.data.length - 1);
    return [
      ChartHighlightLayer(
        shape: () => ChartHighlightLineShape<ChartLineDataItem>(
          backgroundColor: AppColors.navy100,
          currentPos: (item) => item.currentValuePos,
          radius: const BorderRadius.all(Radius.circular(8.0)),
          width: 40.0,
        ),
      ),
      ChartAxisLayer(
        settings: ChartAxisSettings(
          x: ChartAxisSettingsAxis(
            frequency: frequency,
            max: to.toDouble(),
            min: from.toDouble(),
            textStyle: AppTextStyles.caption3().copyWith(
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          y: ChartAxisSettingsAxis(
            frequency: maxY / 4.0,
            max: maxY,
            min: 0.0,
            textStyle: AppTextStyles.caption3().copyWith(
              color: AppColors.white60,
            ),
          ),
        ),
        labelX: (value) => _getLabelAxisX(daysTo, DateTime.fromMillisecondsSinceEpoch(value.toInt())),
        labelY: (value) => value.formatUnits,
      ),
      ChartLineLayer(
        items: retirementPlanModel.data
            .map(
              (element) => ChartLineDataItem(
                value: element.value,
                x: element.date.millisecondsSinceEpoch.toDouble(),
              ),
            )
            .toList(),
        settings: const ChartLineSettings(
          color: AppColors.primary100,
          thickness: 4.0,
        ),
      ),
      ChartTooltipLayer(
        shape: () => ChartTooltipLineShape<ChartLineDataItem>(
          backgroundColor: AppColors.white,
          circleBackgroundColor: AppColors.white,
          circleBorderColor: AppColors.navy100,
          circleSize: 4.0,
          currentPos: (item) => item.currentValuePos,
          marginBottom: 6.0,
          onTextValue: (item) => '€${item.value.toStringAsFixed(2)}',
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 8.0,
          ),
          radius: 6.0,
          textStyle: AppTextStyles.h6().copyWith(
            color: AppColors.primary100,
          ),
        ),
      ),
    ];
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

  static int _getCeil(double value) {
    final String v = value.toInt().toString();
    final StringBuffer buffer = StringBuffer()..write('1');
    for (int i = 0; i < v.length - 2; i++) {
      buffer.write('0');
    }
    return int.tryParse(buffer.toString()) ?? 1;
  }
}
