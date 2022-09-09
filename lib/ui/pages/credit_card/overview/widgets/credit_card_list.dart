part of '../credit_card_overview.dart';

class _CreditCardList extends StatelessWidget {
  final List<AccountModel> accounts;
  final PageController controller;
  final int currentIndex;
  final void Function(AccountModel, int) onCardChanged;

  const _CreditCardList({
    required this.accounts,
    required this.controller,
    required this.currentIndex,
    required this.onCardChanged,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      onPageChanged: (page) => onCardChanged(accounts[page], page),
      itemCount: accounts.length,
      itemBuilder: (_, index) {
        final AccountModel account = accounts[index];
        return AnimatedScale(
          duration: AppConstants.animation.defaultDuration,
          scale: currentIndex == index ? 1.0 : 0.95,
          child: AnimatedOpacity(
            duration: AppConstants.animation.defaultDuration,
            opacity: currentIndex == index ? 1.0 : 0.5,
            child: AnimatedCreditCard(
              balance: CurrencyFormatterUtil.instance.format(
                value: account.balance,
              ),
              expiry: account.expiry,
              logo: account.logo,
              number: account.number,
              type: CardAccountType.front,
            ),
          ),
        );
      },
    );
  }
}
