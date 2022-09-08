part of '../financial_breakdown_page.dart';

class _FinancialBreakdownTransactionCell extends StatelessWidget {
  final TransactionCategoryModel transactionCategory;

  Color get _color => Color(
        int.parse(
          transactionCategory.colorHex,
          radix: 16,
        ),
      );

  const _FinancialBreakdownTransactionCell({
    required this.transactionCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppDimensions.padding.defaultValue,
      ),
      child: Row(
        children: [
          _buildColorCircle(),
          SizedBox(
            width: AppDimensions.padding.smallValue,
          ),
          _buildPercentage(),
          SizedBox(
            width: AppDimensions.padding.defaultValue,
          ),
          Expanded(
            child: _buildName(),
          ),
          _buildValue(),
        ],
      ),
    );
  }

  Widget _buildColorCircle() {
    return Container(
      decoration: BoxDecoration(
        color: _color,
        shape: BoxShape.circle,
      ),
      height: AppDimensions.padding.defaultValue,
      width: AppDimensions.padding.defaultValue,
    );
  }

  Widget _buildPercentage() {
    return Text(
      PercentageFormatterUtil.instance.format(
        value: transactionCategory.percent,
        decimalDigits: 0,
      ),
      style: AppTextStyles.caption1().copyWith(
        color: _color,
      ),
    );
  }

  Widget _buildName() {
    return Text(
      transactionCategory.name,
      style: AppTextStyles.caption1(),
    );
  }

  Widget _buildValue() {
    return Text(
      CurrencyFormatterUtil.instance.format(
        value: transactionCategory.value,
      ),
      style: AppTextStyles.caption1(),
    );
  }
}
