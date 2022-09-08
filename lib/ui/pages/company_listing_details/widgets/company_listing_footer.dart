part of '../company_listing_page.dart';

class _CompanyListingFooter extends StatelessWidget {
  final List<CompanyListingDetailsItemModel> details;
  final VoidCallback onMorePressed;

  const _CompanyListingFooter({
    required this.details,
    required this.onMorePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24.0),
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppDimensions.padding.defaultValue,
      ).copyWith(
        top: 32.0,
        bottom: AppDimensions.padding.defaultValue,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    AppLoc.of(context).portfolioCurrenciesDetailsHeader,
                    style: AppTextStyles.h6(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: AppDimensions.padding.bigValue,
            ),
            ...details.map(_buildDetails).flattened.toList()
              ..removeLastIfNotEmpty(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildDetails(CompanyListingDetailsItemModel details) {
    return [
      Row(
        children: [
          Text(
            details.index,
            style: AppTextStyles.caption2().copyWith(
              color: AppColors.navy.withOpacity(0.5),
            ),
          ),
          SizedBox(
            width: AppDimensions.padding.smallValue,
          ),
          Expanded(
            child: Text(
              details.title,
              style: AppTextStyles.caption2().copyWith(
                color: AppColors.navy.withOpacity(0.5),
              ),
            ),
          ),
          Expanded(
            child: Text(
              details.description,
              style: AppTextStyles.caption2().copyWith(
                color: AppColors.navy,
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: AppDimensions.padding.smallValue,
      ),
    ];
  }
}
