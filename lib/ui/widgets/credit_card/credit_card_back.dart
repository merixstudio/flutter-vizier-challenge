part of 'animated_credit_card.dart';

class _CreditCardBack extends StatelessWidget {
  final String cvv;

  const _CreditCardBack({
    required this.cvv,
  });

  @override
  Widget build(BuildContext context) {
    return _CreditCardContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: _buildTop(),
          ),
          _buildCvv(),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildTop() {
    return Column(
      children: [
        const Spacer(),
        Container(
          color: AppColors.black,
          height: 40.0,
        ),
        const Spacer(),
      ],
    );
  }

  Widget _buildCvv() {
    return Padding(
      padding: AppDimensions.padding.defaultHorizontal(),
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: AppColors.white,
              height: 40.0,
            ),
          ),
          const SizedBox(
            width: 28.0,
          ),
          _CreditCardCvv(
            cvv: cvv,
          ),
        ],
      ),
    );
  }
}
