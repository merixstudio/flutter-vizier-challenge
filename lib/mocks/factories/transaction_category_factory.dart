part of '../mock_factory.dart';

class _TransactionCategoryFactory {
  final DummyUtil dummyUtil;

  _TransactionCategoryFactory({
    required this.dummyUtil,
  });

  static _TransactionCategoryFactory instance = _TransactionCategoryFactory(
    dummyUtil: DI.resolve(),
  );

  final List<String> _names = [
    'Life',
    'Housing',
    'Debt repayment',
    'Savings',
    'Transporation',
  ]..shuffle();

  static const List<String> _colorsFromLowestValue = [
    'FFFFD6B4',
    'FFFF9843',
    'FFFF7000',
    'FFB783FD',
    'FF8043F9',
  ];

  List<TransactionCategoryModel> transactionCategories() {
    final List<double> generatedValues = List.generate(
      _names.length,
      (index) => dummyUtil.randomDouble(
        minNumber: 100,
        maxNumber: 1500,
      ),
    ).sorted((a, b) => a.compareTo(b));
    final double summaryValues = generatedValues.reduce(
      (value, element) => value + element,
    );
    return List.generate(
      generatedValues.length,
      (index) => TransactionCategoryModel(
        colorHex: _colorsFromLowestValue[index],
        name: _names[index],
        value: generatedValues[index],
        percent: generatedValues[index] / summaryValues * 100,
      ),
    );
  }
}
