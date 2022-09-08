part of '../offer_details_page.dart';

class _OfferDetailsHeader extends StatelessWidget {
  final String leftTitle;
  final String leftContent;
  final String rightTitle;
  final String rightContent;

  const _OfferDetailsHeader({
    required this.leftTitle,
    required this.leftContent,
    required this.rightTitle,
    required this.rightContent,
  });

  @override
  Widget build(BuildContext context) {
    return _OfferDetailsSummary(
      left: Column(
        // TODO (AK) add logic
        children: [
          Text(
            leftTitle,
            style: AppTextStyles.h4(),
          ),
          Text(
            leftContent,
            style: AppTextStyles.caption2Bold().copyWith(
              color: AppColors.navy.withOpacity(0.6),
            ),
          ),
        ],
      ),
      right: Column(
        children: [
          Text(
            rightTitle,
            style: AppTextStyles.h4(),
          ),
          Text(
            rightContent,
            style: AppTextStyles.caption2Bold().copyWith(
              color: AppColors.success100,
            ),
          ),
        ],
      ),
    );
  }
}
