part of '../mock_factory.dart';

class _TransactionFactory {
  final DummyUtil dummyUtil;

  _TransactionFactory({
    required this.dummyUtil,
  });

  static _TransactionFactory instance = _TransactionFactory(
    dummyUtil: DI.resolve(),
  );

  late final List<TransactionModel> _mockedTransactions = [
    _prepareTransaction(
      backgroundHexColor: 'FF142327',
      categoryName: 'Food',
      image: 'assets/mocks/transactions/uber_eats_logo.png',
      name: 'Uber Eats',
    ),
    _prepareTransaction(
      categoryName: 'Entertainment',
      image: 'assets/mocks/transactions/apple_logo.png',
      name: 'Apple Store',
    ),
    _prepareTransaction(
      categoryName: 'Money transfer',
      image: 'assets/mocks/transactions/paypal_logo.png',
      name: 'Paypal',
    ),
    _prepareTransaction(
      categoryName: 'Apparels',
      image: 'assets/mocks/transactions/nike_logo.png',
      name: 'Nike',
    ),
    _prepareTransaction(
      categoryName: 'Subscription',
      image: 'assets/mocks/transactions/vodafone_logo.png',
      name: 'Vodafone',
    ),
  ];

  List<TransactionModel> transactions() {
    return List<TransactionModel>.generate(
      dummyUtil.randomInt(
        minNumber: 15,
        maxNumber: 100,
      ),
      (_) => _mockedTransactions[dummyUtil.randomInt(
        maxNumber: _mockedTransactions.length - 1,
      )],
    );
  }

  TransactionModel _prepareTransaction({
    required String categoryName,
    required String name,
    String? backgroundHexColor,
    String? image,
  }) {
    return TransactionModel(
      backgroundColorHex: backgroundHexColor,
      categoryName: categoryName,
      date: DateTime.now().subtract(
        Duration(
          hours: dummyUtil.randomInt(
            maxNumber: 200,
          ),
        ),
      ),
      image: image,
      name: name,
      value: dummyUtil.randomDouble(
        minNumber: 1,
        maxNumber: 100,
      ),
    );
  }
}
