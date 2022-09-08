import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/data/models/account/account_model.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';
import 'package:vizier/ui/widgets/arrow_change_value.dart';
import 'package:vizier/utils/currency_formatter_util.dart';

class AccountSummaryCell extends StatelessWidget {
  final String logo;
  final String name;
  final String number;
  final double balance;
  final double change;
  final VoidCallback? onPressed;

  const AccountSummaryCell({
    required this.logo,
    required this.name,
    required this.number,
    required this.balance,
    required this.change,
    this.onPressed,
    super.key,
  });

  factory AccountSummaryCell.fromAccountModel(
    AccountModel account, {
    VoidCallback? onPressed,
  }) =>
      AccountSummaryCell(
        logo: account.logo,
        name: account.name,
        number: account.number,
        balance: account.balance,
        change: account.change,
        onPressed: onPressed,
      );

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      onPressed: onPressed,
      padding: EdgeInsets.symmetric(
        vertical: AppDimensions.padding.smallValue,
        horizontal: AppDimensions.padding.defaultValue,
      ),
      child: Row(
        children: [
          _buildLogo(context),
          SizedBox(
            width: AppDimensions.padding.defaultValue,
          ),
          Expanded(
            child: _buildNameNumber(context),
          ),
          _buildBalanceChange(context),
        ],
      ),
    );
  }

  Widget _buildLogo(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.white,
      radius: 20.0,
      child: Image(
        image: AssetImage(logo),
        height: 20.0,
      ),
    );
  }

  Widget _buildNameNumber(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: AppColors.white,
              ),
        ),
        const SizedBox(
          height: 2.0,
        ),
        Text(
          number,
          style: Theme.of(context).textTheme.caption?.copyWith(
                color: AppColors.white.withOpacity(0.6),
              ),
        )
      ],
    );
  }

  Widget _buildBalanceChange(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          CurrencyFormatterUtil.instance.format(
            value: balance,
          ),
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: AppColors.white,
                height: 16.0 / 14.0,
              ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        ArrowChangeValue(
          change: CurrencyFormatterUtil.instance.format(
            value: change,
          ),
          changeColor: CurrencyFormatterUtil.instance.changeColor(
            value: change,
          ),
          isNegative: change.isNegative,
        ),
      ],
    );
  }
}
