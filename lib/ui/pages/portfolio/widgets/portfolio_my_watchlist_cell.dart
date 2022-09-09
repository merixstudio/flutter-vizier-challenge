import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/decorations/app_decorations.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/data/models/company_asset/company_asset_model.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';
import 'package:vizier/ui/widgets/arrow_change_value.dart';
import 'package:vizier/utils/currency_formatter_util.dart';
import 'package:vizier/utils/percentage_formatter_util.dart';

class PortfolioMyWatchlistCell extends StatelessWidget {
  final CompanyAssetModel companyAsset;
  final void Function(CompanyAssetModel) onPressed;

  const PortfolioMyWatchlistCell({
    required this.companyAsset,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      onPressed: () => onPressed(companyAsset),
      padding: EdgeInsets.all(AppDimensions.padding.defaultValue),
      child: Row(
        children: [
          _buildLogo(),
          SizedBox(
            width: AppDimensions.padding.defaultValue,
          ),
          Expanded(
            child: _buildNames(context),
          ),
          _buildValueChange(context),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    const double radius = 20.0;
    return Container(
      decoration: AppDecorations.defaultBorder().copyWith(
        borderRadius: BorderRadius.circular(radius),
      ),
      padding: const EdgeInsets.all(6.0),
      child: CircleAvatar(
        backgroundColor: AppColors.white,
        backgroundImage: AssetImage(companyAsset.logo),
        radius: radius - 6.0,
      ),
    );
  }

  Widget _buildNames(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          companyAsset.shortName,
          style: AppTextStyles.caption1Bold(),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Text(
          companyAsset.name,
          style: AppTextStyles.caption2().copyWith(
            color: AppColors.gray200,
          ),
        ),
      ],
    );
  }

  Widget _buildValueChange(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          CurrencyFormatterUtil.instance.format(
            value: companyAsset.currentValue,
          ),
          style: AppTextStyles.caption1Bold(),
        ),
        const SizedBox(
          height: 4.0,
        ),
        ArrowChangeValue(
          change: PercentageFormatterUtil.instance.format(
            value: companyAsset.changePercentage,
          ),
          changeColor: CurrencyFormatterUtil.instance.changeColor(
            value: companyAsset.changePercentage,
          ),
          changeStyle: AppTextStyles.caption2(),
          isNegative: companyAsset.changePercentage.isNegative,
          arrowOnRightSide: true,
        ),
      ],
    );
  }
}
