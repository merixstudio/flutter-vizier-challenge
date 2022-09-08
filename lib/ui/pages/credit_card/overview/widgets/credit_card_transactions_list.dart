part of '../credit_card_overview.dart';

class _CreditCardTransactionsList extends StatelessWidget {
  final List<TransactionModel> transactions;

  const _CreditCardTransactionsList({
    required this.transactions,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index) {
        final TransactionModel transaction = transactions[index];
        return TransactionCell(
          transactionModel: transaction,
        );
      },
      itemCount: transactions.length,
      padding: AppDimensions.padding.defaultHorizontal().copyWith(
            bottom: MediaQuery.of(context).viewPadding.bottom,
          ),
      separatorBuilder: (_, __) => SizedBox(
        height: AppDimensions.padding.bigValue,
      ),
    );
  }
}
