part of '../company_listing_page.dart';

class _CompanyListingButtons extends StatelessWidget {
  final VoidCallback onBuyPressed;
  final VoidCallback onSellPressed;

  const _CompanyListingButtons({
    required this.onBuyPressed,
    required this.onSellPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AdaptiveButton(
            onPressed: onSellPressed,
            decoration: AppDecorations.button.secondary().copyWith(
                  color: Colors.transparent,
                ),
            child: Text(
              AppLoc.of(context).portfolioCurrenciesSellButton,
              style: AppTextStyles.button.primary(),
            ),
          ),
        ),
        SizedBox(
          width: AppDimensions.padding.defaultValue,
        ),
        Expanded(
          child: AdaptiveButton(
            onPressed: onBuyPressed,
            decoration: AppDecorations.button.primary(),
            child: Text(
              AppLoc.of(context).portfolioCurrenciesBuyButton,
              style: AppTextStyles.button.primary(),
            ),
          ),
        ),
      ],
    );
  }
}
