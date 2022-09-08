import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/data/models/transaction/transaction_model.dart';
import 'package:vizier/utils/currency_formatter_util.dart';

class TransactionCell extends StatelessWidget {
  final TransactionModel transactionModel;

  const TransactionCell({
    required this.transactionModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildImage(),
        SizedBox(
          width: AppDimensions.padding.defaultValue,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTitleValueRow(),
              const SizedBox(
                height: 4.0,
              ),
              _buildCategoryName(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildImage() {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: transactionModel.backgroundColorHex != null
            ? Color(
                int.parse(
                  transactionModel.backgroundColorHex!,
                  radix: 16,
                ),
              )
            : AppColors.white,
        border: Border.all(
          color: AppColors.gray400,
        ),
        shape: BoxShape.circle,
      ),
      height: 40.0,
      width: 40.0,
      child: ClipOval(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Image(
            errorBuilder: (_, __, ___) => const SizedBox.shrink(),
            height: 20.0,
            image: AssetImage(transactionModel.image ?? ''),
          ),
        ),
      ),
    );
  }

  Widget _buildTitleValueRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildName(),
        _buildValue(),
      ],
    );
  }

  Widget _buildName() {
    return Text(
      transactionModel.name,
      style: AppTextStyles.caption1(),
    );
  }

  Widget _buildValue() {
    return Text(
      CurrencyFormatterUtil.instance.format(
        value: transactionModel.value,
      ),
      style: AppTextStyles.caption1(),
    );
  }

  Widget _buildCategoryName() {
    return Text(
      transactionModel.categoryName,
      style: AppTextStyles.caption2().copyWith(
        color: AppColors.gray200,
      ),
    );
  }
}
