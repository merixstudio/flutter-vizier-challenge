part of '../financial_breakdown_page.dart';

class _FinancialBreakdownTransactionsSummary extends StatelessWidget {
  final List<TransactionCategoryModel> transactionCategories;

  const _FinancialBreakdownTransactionsSummary({
    required this.transactionCategories,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(24.0),
        ),
        color: AppColors.white,
      ),
      padding: EdgeInsets.all(AppDimensions.padding.bigValue),
      child: SafeArea(
        child: _buildTransactionsList(),
      ),
    );
  }

  Widget _buildTransactionsList() {
    return ListView.builder(
      itemBuilder: (context, index) => _FinancialBreakdownTransactionCell(
        transactionCategory: transactionCategories[index],
      ),
      itemCount: transactionCategories.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
    );
  }
}
