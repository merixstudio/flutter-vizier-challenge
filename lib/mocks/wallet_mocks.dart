part of 'mock_factory.dart';

class _WalletMocks {
  final DummyUtil dummyUtil;
  final double cashBalance;
  final DateTime currentDate;
  final double goal;
  final double initialWalletBalance;
  final double investmentsBalance;
  final double investmentsChange;

  _WalletMocks({
    required this.dummyUtil,
    required this.cashBalance,
    required this.currentDate,
    required this.goal,
    required this.initialWalletBalance,
    required this.investmentsBalance,
    required this.investmentsChange,
  });

  late final List<AccountModel> _accounts = [
    AccountModel(
      logo: 'assets/mocks/finances/my_account_image.png',
      name: 'Personal account',
      number: '**** **** **** 2345',
      balance: cashBalance,
      change: dummyUtil.randomDouble(
        minNumber: -200,
        maxNumber: 300,
      ),
      expiry: '12/23',
    ),
    AccountModel(
      logo: 'assets/mocks/finances/investments_image.png',
      name: 'My investments',
      number: '**** **** **** 6789',
      balance: investmentsBalance,
      change: investmentsChange,
      expiry: '12/23',
    ),
  ];
  late double _balance = initialWalletBalance;

  bool addWalletAccount({
    required AccountModel account,
  }) {
    final AccountModel newAccount = account.copyWith(
      number: '**** **** **** ${account.number.substring(15, 19)}',
      logo: [
        'assets/mocks/finances/my_account_image.png',
        'assets/mocks/finances/investments_image.png',
      ][dummyUtil.randomInt(maxNumber: 2)],
      balance: dummyUtil.randomDouble(
        minNumber: 1000,
        maxNumber: 10000,
      ),
    );
    _balance += newAccount.balance;
    _accounts.add(newAccount);
    return true;
  }

  WalletModel prepareWallet() {
    return WalletModel(
      balance: _balance,
      goal: goal,
      accounts: _accounts,
      date: DateTime.now(),
    );
  }

  AccountBreakdownModel prepareAccountBreakdown({
    required int daysBack,
    required AccountModel account,
  }) {
    return AccountBreakdownModel(
      from: currentDate.subtract(
        _DurationFactory.instance.standard(daysBack),
      ),
      to: currentDate,
      transactionCategories: _TransactionCategoryFactory.instance.transactionCategories(),
      account: account,
    );
  }

  List<GoalModel> prepareGoals() {
    return [
      GoalModel(
        name: 'Papers',
        goal: dummyUtil.randomDouble(
          minNumber: 100,
          maxNumber: 500,
        ),
        change: dummyUtil.randomDouble(
          minNumber: -100,
          maxNumber: 100,
        ),
        reached: dummyUtil.randomInt(
          maxNumber: 100,
        ),
      ),
      GoalModel(
        name: 'Investments',
        goal: dummyUtil.randomDouble(
          minNumber: 100,
          maxNumber: 500,
        ),
        change: dummyUtil.randomDouble(
          minNumber: -100,
          maxNumber: 500,
        ),
        reached: dummyUtil.randomInt(
          maxNumber: 100,
        ),
      ),
      GoalModel(
        name: 'Savings',
        goal: dummyUtil.randomDouble(
          minNumber: 100,
          maxNumber: 500,
        ),
        change: dummyUtil.randomDouble(
          minNumber: -100,
          maxNumber: 500,
        ),
        reached: dummyUtil.randomInt(
          maxNumber: 100,
        ),
      ),
    ];
  }

  List<TransactionModel> prepareTransactions() {
    return _TransactionFactory.instance.transactions()..shuffle();
  }
}
