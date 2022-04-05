part of 'mock_factory.dart';

class _OffersMocks {
  final double goal;

  _OffersMocks({
    required this.goal,
  });

  List<OfferModel> prepareAll() {
    return [
      OfferModel(
        expectedValue: goal,
        label: 'Retirement goals',
        image: AppImages.svg.retirementGoals,
        detailsImage: AppImages.svg.retirementGoalsDetails,
        sliders: [
          const OfferSliderModel(
            current: 0.4,
            frequency: 100,
            label: 'Mothly saving plan',
            maxValue: 10000,
            type: OfferSliderType.price,
          ),
          const OfferSliderModel(
            current: 0.6,
            frequency: 1000,
            label: 'Current asset worth',
            maxValue: 100000,
            type: OfferSliderType.price,
          ),
        ],
        type: OfferType.retirementGoals,
      ),
      OfferModel(
        expectedValue: goal * 0.3,
        label: 'Mortgage',
        image: AppImages.svg.mortgage,
        detailsImage: AppImages.svg.mortgageDetails,
        sliders: [
          const OfferSliderModel(
            current: 0.2,
            frequency: 10000,
            label: 'Purchase price',
            maxValue: 1000000,
            type: OfferSliderType.price,
          ),
          const OfferSliderModel(
            current: 0.3,
            frequency: 1,
            label: 'Repayment time',
            maxValue: 30,
            type: OfferSliderType.year,
          ),
        ],
        type: OfferType.mortgage,
      ),
    ];
  }
}
