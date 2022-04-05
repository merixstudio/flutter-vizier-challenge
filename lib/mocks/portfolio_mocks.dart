part of 'mock_factory.dart';

class _PortfolioMocks {
  final DummyUtil dummyUtil;
  final double balance;
  final double change;
  final DateTime currentDate;

  _PortfolioMocks({
    required this.dummyUtil,
    required this.balance,
    required this.change,
    required this.currentDate,
  });

  double get _digitalCurrenciesBalance => balance * 0.3;
  double get _assetsBalance => balance - _digitalCurrenciesBalance;

  PortfolioOverviewModel prepareOverview() {
    return PortfolioOverviewModel(
      assetsBalance: balance,
      assetsChange: change,
      assetsPercentageChange: change / balance * 100,
      digitalCurrenciesBalance: _digitalCurrenciesBalance,
      digitalCurrenciesPercentageChange: change / _digitalCurrenciesBalance * 100,
    );
  }

  List<CompanyAssetModel> prepareWatchlist() {
    return [
      CompanyAssetModel(
        shortName: 'TSLA',
        name: 'Tesla Inc.',
        logo: 'assets/mocks/portfolio/tesla_logo.png',
        currentValue: _assetsBalance * 0.4,
        changePercentage: change * 1.2,
      ),
      CompanyAssetModel(
        shortName: 'GOOGL',
        name: 'Alphabet Inc.',
        logo: 'assets/mocks/portfolio/google_logo.png',
        currentValue: _assetsBalance * 0.2,
        changePercentage: change * 0.1,
      ),
      CompanyAssetModel(
        shortName: 'NIKE',
        name: 'Nike Inc.',
        logo: 'assets/mocks/portfolio/nike_logo.png',
        currentValue: _assetsBalance * 0.1,
        changePercentage: change * -0.3,
      ),
      CompanyAssetModel(
        shortName: 'NFLX',
        name: 'Netflix Inc.',
        logo: 'assets/mocks/portfolio/netflix_logo.png',
        currentValue: _assetsBalance * 0.3,
        changePercentage: change,
      ),
    ];
  }

  List<CompanyListingDetailsItemModel> prepareCompanyListingDetails() {
    return const [
      CompanyListingDetailsItemModel(
        description: '678.90',
        index: '01',
        title: 'Previous Close',
      ),
      CompanyListingDetailsItemModel(
        description: '681.71',
        index: '02',
        title: 'Open',
      ),
      CompanyListingDetailsItemModel(
        description: '662.65 x 900',
        index: '03',
        title: 'Bid',
      ),
      CompanyListingDetailsItemModel(
        description: '662.65 x 900',
        index: '04',
        title: 'Ask',
      ),
      CompanyListingDetailsItemModel(
        description: '651.40 - 684.00',
        index: '05',
        title: 'Day\'s Range',
      ),
    ];
  }

  CompanyListingHistoryModel prepareCompanyListingHistory({
    required CompanyAssetModel companyAsset,
    required int daysBack,
  }) {
    List<CompanyListingHistoryDataModel> history;
    switch (daysBack) {
      case DateTime.daysPerWeek:
        history = _generateHistory(7 * 3, daysBack);
        break;
      default:
        history = _generateHistory(5 * 3, daysBack);
    }
    final nowT = DateTime.now();
    final now = DateTime(nowT.year, nowT.month, nowT.day);
    return CompanyListingHistoryModel(
      daysBack: daysBack,
      from: now.subtract(
        _DurationFactory.instance.standard(daysBack),
      ),
      history: history,
      to: now,
    );
  }

  List<CompanyListingHistoryDataModel> _generateHistory(int count, int daysBack) {
    final nowT = DateTime.now();
    final now = DateTime(nowT.year, nowT.month, nowT.day);
    late final int offsetTime;
    switch (daysBack) {
      case DateTime.daysPerWeek:
        offsetTime = const Duration(
              days: 7,
            ).inMilliseconds ~/
            count;
        break;
      case DateTime.monthsPerYear:
        offsetTime = const Duration(
              days: 30,
            ).inMilliseconds ~/
            count;
        break;
      case DateTime.monthsPerYear * 30:
        offsetTime = const Duration(
              days: 12 * 30,
            ).inMilliseconds ~/
            count;
        break;
      default:
        offsetTime = const Duration(
              days: 12 * 30 * 4,
            ).inMilliseconds ~/
            count;
        break;
    }
    int previousV1 = dummyUtil.randomInt(
      minNumber: 1000,
      maxNumber: 2000,
    );
    int previousV2 = dummyUtil.randomInt(
      minNumber: 100,
      maxNumber: 200,
    );
    return List.generate(count + 1, (index) {
      final randomV = dummyUtil.randomDouble(
        minNumber: previousV1 - 50,
        maxNumber: previousV1 + 50,
      );
      final double minV1 = randomV;
      final double maxV1 = randomV + previousV2;
      final double height = max(minV1, maxV1) - min(minV1, maxV1);
      final double diffPerc = height * Random().nextDouble();
      final double restPerc = (height - diffPerc) * Random().nextDouble();
      final double minV2 = minV1 - diffPerc + restPerc;
      final double maxV2 = maxV1 - diffPerc + restPerc;
      previousV1 = dummyUtil.randomInt(
        minNumber: previousV1 - 50,
        maxNumber: previousV1 + 50,
      );
      previousV2 = dummyUtil.randomInt(
        minNumber: (previousV2 - 50).abs(),
        maxNumber: (previousV2 + 50).abs(),
      );
      return CompanyListingHistoryDataModel(
        date: now.subtract(
          Duration(
            milliseconds: offsetTime * index,
          ),
        ),
        isProfit: dummyUtil.randomBool(),
        value1: CompanyListingHistoryValueModel(
          min: min(minV2, maxV2),
          max: max(minV2, maxV2),
        ),
        value2: CompanyListingHistoryValueModel(
          min: min(minV1, maxV1),
          max: max(minV1, maxV1),
        ),
      );
    });
  }
}
