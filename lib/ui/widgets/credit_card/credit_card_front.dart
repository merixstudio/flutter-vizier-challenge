part of 'animated_credit_card.dart';

class _CreditCardFront extends StatelessWidget {
  final String balance;
  final String expiry;
  final String logo;
  final String number;

  const _CreditCardFront({
    required this.balance,
    required this.expiry,
    required this.logo,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return _CreditCardContainer(
      child: Stack(
        children: [
          if (logo.isNotBlank)
            Positioned(
              top: AppDimensions.padding.defaultValue,
              right: AppDimensions.padding.defaultValue,
              child: SizedBox(
                width: 42.0,
                height: 42.0,
                child: Image.asset(
                  logo,
                  alignment: Alignment.topRight,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          Padding(
            padding: EdgeInsets.all(AppDimensions.padding.defaultValue),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: _buildTop(context),
                ),
                _buildChip(),
                Expanded(
                  child: _buildBottom(context),
                ),
              ],
            ),
          ),
          Transform.scale(
            scale: 1.3,
            child: Transform.translate(
              offset: Offset(
                AppDimensions.padding.biggerValue,
                AppDimensions.padding.biggerValue,
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: SvgPicture.asset(
                  AppImages.svg.cardFace,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTop(BuildContext context) {
    if (balance.isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppLoc.of(context).creditCardBalance,
          style: AppTextStyles.caption2().copyWith(
            color: AppColors.white,
          ),
        ),
        const SizedBox(
          height: 2.0,
        ),
        Text(
          balance,
          style: AppTextStyles.h4().copyWith(
            color: AppColors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildBottom(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 10.0,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 36.0,
            ),
            child: _CreditCardNumber(
              number: number,
            ),
          ),
        ),
        _buildValidText(context),
        const SizedBox(
          height: 2.0,
        ),
        _CreditCardExpiry(
          expiry: expiry,
        ),
      ],
    );
  }

  Widget _buildChip() {
    return SizedBox.fromSize(
      size: const Size.square(38.0),
      child: SvgPicture.asset(AppImages.svg.chip),
    );
  }

  Widget _buildValidText(BuildContext context) {
    return Text(
      AppLoc.of(context).creditCardValidThru,
      style: AppTextStyles.caption3().copyWith(
        color: AppColors.white,
      ),
    );
  }
}
